I = 64 #Vector Range
E = 20 #Embedding Dimension
M = 3 #Example per Program
def model_initializer(I = 128,E = 64,M = 3) : 
  input1 = tf.keras.layers.Input((I,))
  input = tf.keras.layers.Input((I,))
  emb = tf.keras.layers.Embedding(input_dim=770,output_dim=E,mask_zero= False)
  dense = tf.keras.layers.Dense(512,activation='sigmoid')
  dense1 = tf.keras.layers.Dense(512,activation='sigmoid')
  dense2 = tf.keras.layers.Dense(512,activation='sigmoid')
  flatten = tf.keras.layers.Flatten()
  conc = tf.keras.layers.Concatenate()
  maxpool = tf.keras.layers.GlobalMaxPooling1D()
  #mask = tf.keras.layers.Masking(mask_value=513)
  final = tf.keras.layers.Dense(34,activation='sigmoid')
  return input,input1,emb,dense,dense1,dense2,flatten,conc,maxpool,final
input,input1,emb,dense,dense1,dense2,flatten,conc,maxpool,final = model_initializer()
inp = input
out = input1
emb_in = emb(inp)
emb_out = emb(out)
concat = conc([emb_in,emb_out])
dense_1 = dense(concat)
dense_2 = dense1(dense_1)
dense3 = dense2(dense_2)
max = maxpool(dense3)
flat = flatten(max)
final_output = final(flat)
model = tf.keras.Model(inputs=[inp,out],outputs=final_output)
model.summary()
tf.keras.utils.plot_model(model)
loss = tf.keras.losses.BinaryCrossentropy()
optimizer = tf.keras.optimizers.Adam(learning_rate=10e-4)
final_input_list = np.array(final_input_list)
final_output_list = np.array(final_output_list)
final_labels = np.array(final_labels)
model.compile(optimizer='adam',loss= loss ,metrics='accuracy')
model.fit(x=[final_input_list,final_output_list],y = final_labels,batch_size=4,epochs=10)
model.save('/content/drive/MyDrive/Synthesis_Models')