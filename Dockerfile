FROM fedora:31 AS build

RUN dnf install -y texlive
RUN dnf install -y texlive-ctex texlive-titlesec texlive-xcolor texlive-setspace texlive-fontawesome texlive-xecjk texlive-fandol

WORKDIR /home
COPY . .
RUN cd /home && xelatex ./example.tex

FROM alpine:latest AS prod

WORKDIR /home
COPY --from=build /home/example.pdf /home/output.pdf
