FROM gcr.io/oss-fuzz-base/base-builder-go

COPY . $SRC/im-so-cooked

COPY ./oss-fuzz/build.sh $SRC/

ENV FUZZING_LANGUAGE=go

WORKDIR $SRC/im-so-cooked
