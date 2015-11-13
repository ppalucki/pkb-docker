FROM ubuntu
MAINTAINER pawel.palucki@gmail.com
RUN apt-get update && apt-get install -y git python-dev build-essential python-virtualenv
RUN git clone https://github.com/GoogleCloudPlatform/PerfKitBenchmarker.git
RUN (cd PerfKitBenchmarker;pip install -r requirements.txt)
RUN (cd PerfKitBenchmarker;python setup.py install)
ENTRYPOINT ["python", "/PerfKitBenchmarker/pkb.py"]
CMD ["--help"]
