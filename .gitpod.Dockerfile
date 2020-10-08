FROM gitpod/workspace-full

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/
FROM gitpod/workspace-full
RUN sudo apt-get install git-review \
    ssh-keygen -t rsa -C you@youremail.com -f ~/.ssh/gerrit \
    cat ~/.ssh/gerrit.pub \
    eval `ssh-agent` \
    ssh-add ~/.ssh/gerrit \
    git push ssh://Aftab-111@review.blissroms.com:29418/platform_hardware_qcom-caf_common.git HEAD:refs/for/r