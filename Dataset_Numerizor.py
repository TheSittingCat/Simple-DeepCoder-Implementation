import json
def train_numerizor(T1_Train_Path) : 
  json_file = open(T1_Train_Path)
  dataset_T_2 = json.load(json_file)
  label_list = []
  input_list = []
  inputs = []
  output_list = []
  outputs = []
  for i in dataset_T_2 : 
    label_list.append(i['attribute'])
    for j in i['examples'] : 
      if len(j['inputs']) > 1 :
        j['inputs'][0].append(j['inputs'][1])
        inputs.extend([j['inputs'][0]])
      else : 
        inputs.extend(j['inputs'])
      if isinstance(j['output'],list) :
        outputs.extend(j['output'])
      else : 
        outputs.append(j['output'])
    input_list.append(inputs)
    output_list.append(outputs)
    outputs = []
    inputs = []
  final_input_list = []
  final_output_list = []
  final_labels = []
  for i in range(len(input_list)) : 
    for j in input_list[i] :
      final_input_list.append(j)
      final_output_list.append(output_list[i])
      final_labels.append(label_list[i])
  for i in final_input_list : 
    for j in i :
      if not isinstance(j,int) :
        temp_ind = final_input_list.index(i)
        final_input_list[temp_ind] = [x for x in final_input_list[final_input_list.index(i)] if x!= j]
        for z in j :
          final_input_list[temp_ind].append(z)
  final_input_list = tf.keras.preprocessing.sequence.pad_sequences(final_input_list,128,padding='post',truncating='post',value=513)
  for i in final_output_list :
    for j in i :
      if j == None :
        final_output_list[final_output_list.index(i)][i.index(j)] = 513
  final_output_list = tf.keras.preprocessing.sequence.pad_sequences(final_output_list,128,padding='post',truncating='post',value=513)
  for i in range(len(final_input_list)) :
    for j in range(len(final_input_list[i])) :
      final_input_list[i][j] += 256
  for i in range(len(final_output_list)) :
    for j in range(len(final_output_list[i])) :
      final_output_list[i][j] += 256
  return final_output_list,final_input_list,final_labels
def Test_Numerizor(T1_Test_Path) :
  json_file = open(T1_Test_Path)
  dataset_T_2 = json.load(json_file)
  label_list = []
  input_list = []
  inputs = []
  output_list = []
  outputs = []
  for i in dataset_T_2 : 
    label_list.append(i['attribute'])
    for j in i['examples'] : 
      if len(j['inputs']) > 1 :
        j['inputs'][0].append(j['inputs'][1])
        inputs.extend([j['inputs'][0]])
      else : 
        inputs.extend(j['inputs'])
      if isinstance(j['output'],list) :
        outputs.extend(j['output'])
      else : 
        outputs.append(j['output'])
    input_list.append(inputs)
    output_list.append(outputs)
    outputs = []
    inputs = []
  final_input_list = []
  final_output_list = []
  final_labels = []
  for i in range(len(input_list)) : 
    for j in input_list[i] :
      final_input_list.append(j)
      final_output_list.append(output_list[i])
      final_labels.append(label_list[i])
  for i in final_input_list : 
    for j in i :
      if not isinstance(j,int) :
        temp_ind = final_input_list.index(i)
        final_input_list[temp_ind] = [x for x in final_input_list[final_input_list.index(i)] if x!= j]
        for z in j :
          final_input_list[temp_ind].append(z)
  final_input_list = tf.keras.preprocessing.sequence.pad_sequences(final_input_list,128,padding='post',truncating='post',value=513)
  for i in final_output_list :
    for j in i :
      if j == None :
        final_output_list[final_output_list.index(i)][i.index(j)] = 513
  final_output_list = tf.keras.preprocessing.sequence.pad_sequences(final_output_list,128,padding='post',truncating='post',value=513)
  for i in range(len(final_input_list)) :
    for j in range(len(final_input_list[i])) :
      final_input_list[i][j] += 256
  for i in range(len(final_output_list)) :
    for j in range(len(final_output_list[i])) :
      final_output_list[i][j] += 256
  return final_output_list,final_input_list,final_labels
