MAIN=QuiverBundles
REF=RefereeReportResponse1

.PHONY: all
all: ${MAIN}.pdf ${REF}.pdf

include ./recipes.mk

${MAIN}.pdf: ${MAIN}.tex ${TEX_DEPS} refs.bib

${REF}.pdf: ${REF}.tex ${TEX_DEPS} refs.bib

