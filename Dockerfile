FROM	continuumio/miniconda3



RUN	conda create --name squire --override-channels -c iuc -c bioconda -c conda-forge -c defaults -c r python=2.7.13 bioconductor-deseq2=1.16.1 r-base=3.4.1 r-pheatmap bioconductor-vsn bioconductor-biocparallel=1.12.0 r-ggrepel star=2.5.3a bedtools=2.25.0 samtools=1.1 stringtie=1.3.3 igvtools=2.3.93 ucsc-genepredtobed ucsc-gtftogenepred ucsc-genepredtogtf ucsc-bedgraphtobigwig r-hexbin 
RUN	echo "source activate squire" > ~/.bashrc

ENV PATH /opt/conda/envs/squire/bin:$PATH

RUN	git clone https://github.com/wyang17/SQuIRE 
RUN	cd SQuIRE \
	pip install -e
RUN	cd SQuIRE \
	python setup.py install
RUN	cd SQuIRE \
	git pull
ENV PATH /SQuIRE/squire:$PATH

RUN	cd SQuIRE/squire \
	python Fetch.py -b hg38 -o /data -f -r -g -x -p 3 
