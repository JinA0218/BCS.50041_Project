# To enable our model to control what classes to generate, we replaced
# the standard normal prior over the VAE’s latent variables by a
# Gaussian mixture with a separate mode for each class

# This made it possible to generate
# specific classes by restricting the sampling of the latent variables
# to their corresponding modes

# 1. increase # of selected class for (b) when replaying
# dataset : permMNIST, CIFAR-100(class) or CIFAR-10

# permMNIST : fig 5 - ./compare_permMNIST100.py --seed=12 --n-seeds=5 --visdom --batch-replay=50 
# CIFAR-100 : fig 6 - ./compare_CIFAR100.py --scenario=class --convE-ltag=e100 --seed=12 --n-seeds=10

# generativeRtfConGat0.8Dis-br50
./main_cl_1_permMNIST.py --visdom --batch-replay=50 --seed=12 --n-seeds=5 --pdf
# generativeRtfConGat0.8Dis-br100
./main_cl_1_permMNIST.py --visdom --batch-replay=100 --seed=12 --n-seeds=5 --pdf
# generativeRtfConGat0.8Dis-br150
./main_cl_1_permMNIST.py --visdom --batch-replay=150 --seed=12 --n-seeds=5 --pdf
# generativeRtfConGat0.8Dis-br200
./main_cl_1_permMNIST.py --visdom --batch-replay=200 --seed=12 --n-seeds=5 --pdf

./main_cl_1_permMNIST.py --visdom --batch-replay=256 --seed=12 --n-seeds=5 --pdf

# 'generativeRtfConGat0.7IntDis-br50'
./main_cl_1_CIFAR100.py --visdom --batch-replay=50 --scenario=class --convE-ltag=e100 --seed=12 --n-seeds=10 --pdf
# 'generativeRtfConGat0.7IntDis-br100'
./main_cl_1_CIFAR100.py --visdom --batch-replay=100 --scenario=class --convE-ltag=e100 --seed=12 --n-seeds=10 --pdf
# 'generativeRtfConGat0.7IntDis-br150'
./main_cl_1_CIFAR100.py --visdom --batch-replay=150 --scenario=class --convE-ltag=e100 --seed=12 --n-seeds=10 --pdf
# 'generativeRtfConGat0.7IntDis-br200'
./main_cl_1_CIFAR100.py --visdom --batch-replay=200 --scenario=class --convE-ltag=e100 --seed=12 --n-seeds=10 --pdf

./main_cl_1_CIFAR100.py --visdom --batch-replay=256 --scenario=class --convE-ltag=e100 --seed=12 --n-seeds=10 --pdf # << should run


# ./main_cl.py --replay=generative --brain-inspired --visdom --batch-replay=50 --experiment=CIFAR100 --scenario=class --seed=12
# ./main_cl.py --replay=generative --brain-inspired --visdom --batch-replay=100 --experiment=CIFAR100 --scenario=class --seed=12
# ./main_cl.py --replay=generative --brain-inspired --visdom --batch-replay=150 --experiment=CIFAR100 --scenario=class --seed=12
# ./main_cl.py --replay=generative --brain-inspired --visdom --batch-replay=200 --experiment=CIFAR100 --scenario=class --seed=12
# ./main_cl.py --replay=generative --brain-inspired --visdom --batch-replay=256 --experiment=CIFAR100 --scenario=class --seed=12

# 2. n_mode : how many modes for prior (per class)? (def=1)
# ./main_cl.py --replay=generative --brain-inspired --visdom --n-modes=1
# ./main_cl.py --replay=generative --brain-inspired --visdom --n-modes=2
# ./main_cl.py --replay=generative --brain-inspired --visdom --n-modes=3
# ./main_cl.py --replay=generative --brain-inspired --visdom --n-modes=4
# ./main_cl.py --replay=generative --brain-inspired --visdom --n-modes=5

# 2. training comparison of on/off internal replay
# ./main_cl.py --replay=generative --brain-inspired --visdom 

# visdom {'graph': 'generativeRtfConGat0.7IntDis', 'env': 'CIFAR10010-class'}
./main_cl_2.py --scenario=class --convE-ltag=e100 --seed=12 --n-seeds=10 --visdom --pdf
#  visdom  {'graph': 'generativeRtfConGat0.9Dis', 'env': 'CIFAR10010-class'}
./main_cl_2.py --scenario=class --convE-ltag=e100 --seed=12 --n-seeds=10 --visdom --internal-replay-off --pdf

./compare_CIFAR100_bir_jina.py --scenario=class --convE-ltag=e100 --seed=12 --n-seeds=10 --visdom --pdf
./compare_CIFAR100_bir_jina.py --scenario=class --convE-ltag=e100 --seed=12 --n-seeds=10 --visdom --internal-replay-off --pdf