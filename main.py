def predict(inputs,outputs,model) : 
  #inputs ==> List of Lists containing the inputs of examples
  #outputs ==> List of Lists containing the outputs of the examples
  #model ==> Neural Model
  inp = tf.keras.preprocessing.sequence.pad_sequences(inputs,128,padding='post',truncating='post',value=513)
  out = out = tf.keras.preprocessing.sequence.pad_sequences(outputs,128,padding='post',truncating='post',value=513)
  for i in range(len(inp)) :
    for j in range(len(inp[i])) :
      inp[i][j] += 256
  for i in range(len(out)) :
    for j in range(len(out[i])) :
      out[i][j] += 256
  predicts = model.predict([inp,out])
  avg_predicts = np.array([0 for x in predicts[0]])
  for i in predicts : 
    avg_predicts = avg_predicts + i
  avg_predicts = avg_predicts / len(predicts)
  return list(avg_predicts)
#example
preds = predict([[194, -125, 9, 31, 74, -1, -201, -167, -153, -54, 151, 224, -16, -113, 82, -136, -83, 98, -150,-250, -101, -115, -167, 239, 10, 195, 78],[32, -202, 152, 94, 30, 160, -97, -251, -101, 103, 7, -233, -228, 18, 235, 9, 237,-135, 219],[-242, -205, -85, -179, -115, 104, -220, -153, 136,-27, 98, -77, 170, 182, 247, -101, -77, -50, -228, -247, -53, 75, 70, 210, 16, 128, 50, 27]],[[-250, -125, -115, -167, 74, -1, -201, -167],[-135, -202],[-242, -205, -85, -179, -115, 104, -220, -153, -50]],model)
from inspect import signature
import copy
function_list = [Head,Last,Min,Max,Reverse,Sorted,Sum,Take,Drop,Access,Map,Filter,Count,ScanL1,ZipWith,Plus,Minus,Mult2,Div2,Negate,Pow2,Mult3,Div3,Mult4,Div4,Pos,Neg,Even,Odd,BinSum,BinMinus,BinMult,BinMin,BinMax]
def search(function_list,prob_list,inputs,outputs,T=2,breakpoint = None) :
  prob_list = np.array(prob_list)
  overall_top_k = np.argpartition(prob_list, -34)[-34:]
  overall_top_k = overall_top_k[np.argsort(prob_list[overall_top_k])]
  for i in reversed(overall_top_k) :
    call_list = []
    call_list.append(function_list[i])
    sig = signature(function_list[i])
    if breakpoint == None and 'f' not in sig.parameters and 'y' not in sig.parameters and 'n' not in sig.parameters and 'z' not in sig.parameters : 
      if call_list[0](x = inputs) == outputs :
        return call_list
    elif breakpoint == -1 and  'n' in sig.parameters :
      try : 
        if call_list[0](x = inputs[:-1],n = inputs[-1]) == outputs :
          return call_list
      except :
        pass
    for j in reversed(overall_top_k) : 
      sig_j = signature(function_list[j])
      if j != i and 'f' in sig.parameters and 'f' not in sig_j.parameters : 
        call_list.append(function_list[j])
        try :
          if breakpoint == None : 
            if call_list[0](f = call_list[1],x = inputs) == outputs :
              return call_list
            else :
              del call_list[1]
          elif breakpoint != -1 : 
            if call_list[0](f=call_list[1], x = inputs[:breakpoint], y = inputs[breakpoint:]) == outputs :
              return call_list
            else : 
              del call_list[1]
        except :
          del call_list[1]
  return None
print(search(function_list,preds,[194, -125, 9, 31, 74, -1, -201, -167, -153, -54, 151, 224, -16, -113, 82, -136, -83, 98, -150,-250, -101, -115, -167, 239, 10, 195, 78],[-250, -125, -115, -167, 74, -1, -201, -167], breakpoint=19))