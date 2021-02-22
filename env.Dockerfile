FROM fedora:31 AS build

RUN dnf install -y texlive
RUN dnf install -y texlive-ctex texlive-titlesec texlive-xcolor texlive-setspace texlive-fontawesome texlive-xecjk texlive-fandol
