# Simple-DeepCoder-Implementation
This is an implementation of the Simple DeepCoder system that we implemented with some changes.
===================================================================================
The aim of the Synthesizer is that given some Input-Output examples, to find a sequence of functions that take the input from the examples as the inputs to the first function, and output the pre-defined outputs from the examples.
Essentially, this is a satisfaction requirement problem that strives to satisfy requirements implicated as input-output examples. It is a best effort algorithm that if possible, finds a sequence of functions that satisfy these requirements. In other words, it finds a program that works for every intput-output examples that are given by the user. 

We make use of a Neural Network to find the best functions candidates that have a greater chance of satisfying the requirements. Then we use a classical Depth First Search up to some depth T to search the program state and test various combination of these functions. Note that the search itself is exhaustive, however it first searches over the functions that are assigned a greater probability by the Neural Net, thus the actual complexity of the problem should be lower in general. 

Please read the Project Report for a complete description of the methodology used as well as some examples. 

Dataset used in this implementation is courtesy of Dkamm, whose wonderful work on the same project can be found at https://github.com/dkamm/deepcoder. Use the link provided there to run the model and set the path in the file of the 'Numeralize' function to T = 1 file on the unzipped dataset.

Note that running the main.py file is enough to run the code, given that you have downloaded the model from the folder. However you can also take a look at model_initilization.py to replicate our training process and test it. If you want to do this, first run the Numerilizor with the data. Then feed the outputs to the model. 
