#How to host your own LLM in our GPU clusters


If you want to host your private LLM instance, we have created the two tutorials below to help you.

## Hosting LLMs in your local computer using Msty

If you have a GPU capabable of running a LLM, and already have the CUDA-toolkit drivers, you can install Msty and easily download multiple models and run them side by side. Download the `Msty_HowTo.pdf` file for a step by step guide.


## Hosting LLMs in our GPU cluster using MAX

MAX allows us to host LLM models in a kubernetes cluster without too much work. The file `MaxHugg_public.yaml` is an almost ready to use (just need to change your personal details). To submit a prompt to your model, open a terminal and copy/paste the example provided in the file `submit.txt`.

For more information on MAX, or on how to access gated models (Llama3.3 for example) visit the links below:

https://docs.modular.com/max/tutorials/deploy-max-serve-on-kubernetes/

https://huggingface.co/