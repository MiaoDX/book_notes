# Baseline and state-of-the art algorithms


***
## VQA:
Paper: [VQA: Visual Question Answering](http://arxiv.org/pdf/1505.00468v6.pdf)


" ... we develop a 2-channel vision (image) + language (question) model that culminates with a softmax over K possible outputs.

K = 1000 most frequent answers, covers **82.67%** of the train+val answers.

. . .

**Image Channel**

* I
    - The activations from the last hidden layer of VGGNet are used as 4096-dim image embedding
* norm I
    -  $l_2$ normalized activations from the last hidden layer of VGGNet

***
**Question Channel**

* Bag-of-Words Questions (BoW Q)
    -  top 1,000 words in the questions +  top 10 first, second, and third words of the questions (strong correlation between the words that start a question and the answer) = 1,030

* LSTM Q
    - An LSTM with one hidden layer is used to obtain 1024-dim embedding for the question
    - Each question word is encoded with 300-dim embedding by a fully-connected layer + tanh non-linearity which is then fed to the LSTM

* deeper LSTM Q
    - An LSTM with two hidden layers is used to obtain 2048-dim embedding for the question, followed by a fully-connected layer + tanh non-linearity to transform 2048-dim embedding to 1024-dim

***
![deeper LSTM Q + norm I](pics/vqa_lstmq_normI.png){width=70%}

***
### Multi-Layer Perceptron (MLP)

* BoW Q + I
    - simply concatenate the BoW Q and I embeddings

* LSTM Q + I, deeper LSTM Q + norm I
    - Image embedding -> 1024 dim (match LSTM for question)
    - Image embedding * question embedding (element-wise multiplication)

***
![VQA comparison](pics/vqa_com.png){width=70%}



***
## Visual7W

Paper: [Visual7W: Grounded Question Answering in Images](https://arxiv.org/abs/1511.03416)

![Diagram of the recurrent neural network model for **pointing** QA](pics/visual7w_net.png){width=40%}

***
" The model first reads the image $v_0$ and all the question tokens $v_q1$ , $v_q2$ ,..., $v_qm$ until reaching the question mark (i.e., end token of the question sequence). 

When training for telling QA, we continue to feed the ground-truth answer tokens v a 1 , v a 2 ,...,v a n into the model. 

For pointing QA, we compute the log-likelihood of an candidate region by  a dot product between its transformed visual feature (fc7) and the last LSTM hidden state.

***
![Visual7W Human and model performances comparison](pics/visual7w_com.png){width=70%}

LSTM (Question) > Human (Question) => 

" Human subjects are not trained before answering the questions; however, the LSTM model manages to learn the priors of answers from the training set.

SO, could it be "if do not know, choose C"? :)

***
![Visual7W object groundings and attention heat maps](pics/visual7w_hm.png){width=70%}


***
## HieCoAttenVQA

[Hierarchical Question-Image Co-Attention for Visual Question Answering](https://arxiv.org/abs/1606.00061)

. . .

"where to look" or visual attention

. . .

"what words to listen to" or question attention


* Co-Attention
    - jointly reasons about visual attention and question attention

* Question-Hierarchy
    -  (a) word level
        +  words to a vector
    -  (b) phrase level
        +  1d CNN: word representations with temporal filters -> pooling them into a single phrase level representation
    -  (c) question level
        +  RNN: encode the entire question


***
![HieCoAtten example](pics/hieco_eg1.png){width=70%}

***
![Two co-attention mechanisms](pics/hieco_mech.png){width=70%}

![Alternating co-attention mechanism equation](pics/hieco_mech_alter.png){width=70%}

***
![Hierarchical question encoding](pics/hieco_enc.png){width=70%}

Note the three hierarchy.

***
![HieCoAtten performance](pics/hieco_com.png){width=70%}

***
![HieCoAtten visualization (heat map)](pics/hieco_hm.png){width=70%}


***
## MCB

Paper: [Multimodal Compact Bilinear Pooling for Visual Question Answering and Visual Grounding](https://arxiv.org/abs/1606.01847)


" We hypothesize that these methods are not as expressive as an outer product of the visual and textual vectors.

***
MCB

Multimodal Compact Bilinear Pooling make the computation of outer product of vectors feasible.

![MCB description](pics/mcb_des.png){width=70%}

***
* Count Sketch projection
    - [Finding frequent items in data streams](http://www.mathcs.emory.edu/~cheung/Courses/584-StreamDB/Syllabus/papers/Frequency-count/FrequentStream.pdf)

    - [Compact Bilinear Pooling](http://www.cv-foundation.org/openaccess/content_cvpr_2016/papers/Gao_Compact_Bilinear_Pooling_CVPR_2016_paper.pdf)

* The count sketch of the outer product of two vectors can be expressed as convolution of both count sketches
    - [Fast and scalable polynomial kernels via explicit feature maps](http://www.itu.dk/people/pagh/papers/tensorsketch.pdf)

    - ![](pics/product2conv.png){width=50%}
* The convolution theorem states that convolution in the time domain is equivalent to element-wise product in the frequency domain.
    -  The convolution $x'*q'$ can be rewritten as $FFT^{-1}(FFT(x')\bigotimes FFT(q'))$

***
![MCB for VQA](pics/mcb_vqa.png){width=70%}

***
![Comparison of multimodal pooling methods](pics/mcb_vqa_com.png){width=70%}

***
![MCB for VQA with attention](pics/mcb_vqa_atten.png){width=70%}

* For each spatial grid location in the visual representation (i.e. last convolutional layer of ResNet [res5c], last convolutional layer of VGG [conv5])
* we use MCB pooling to merge the slice of the visual feature with the language representation.
* after the pooling we use two convolutional layers to predict the attention weight for each grid location

***
![MCB for VQA with attention and answer encoding](pics/mcb_vqa_atten_ansenc.png){width=70%}

***
![Open-ended and multiple-choice (MC) results on VQA test set](pics/mcb_vqa_com_mc.png){width=70%}

***
![Grounding with MCB](pics/mcb_vqa_grounding.png){width=70%}

***
![Grounding accuracy with MCB](pics/mcb_vqa_grounding_com.png){width=40%}

***
![Predicted answers and attention maps](pics/mcb_vqa_hm.png){width=60%}



# That's all

> Good Luck & Have Fun!