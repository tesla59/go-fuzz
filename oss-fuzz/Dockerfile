FROM gcr.io/oss-fuzz-base/base-builder-go

WORKDIR $SRC

COPY . go-fuzz

WORKDIR $SRC/go-fuzz

ENV FUZZING_LANGUAGE=go

COPY build.sh $SRC/
