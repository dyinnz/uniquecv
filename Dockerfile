FROM fedora:31 AS build

RUN dnf install -y texlive
RUN dnf install -y texlive-ctex texlive-titlesec texlive-xcolor texlive-setspace texlive-fontawesome texlive-xecjk texlive-fandol

WORKDIR /home
COPY . .
RUN cd /home && xelatex ./template_cnen.tex
RUN cd /home && xelatex ./template_cn.tex
RUN cd /home && xelatex ./template_encn.tex
RUN cd /home && xelatex ./template_en.tex

FROM alpine:latest AS prod

WORKDIR /home
COPY --from=build /home/template_cnen.pdf /home/resume_cnen.pdf
COPY --from=build /home/template_encn.pdf /home/resume_encn.pdf
COPY --from=build /home/template_cn.pdf /home/resume_cn.pdf
COPY --from=build /home/template_en.pdf /home/resume_en.pdf