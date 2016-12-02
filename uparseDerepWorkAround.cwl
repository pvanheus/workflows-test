#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: CommandLineTool

inputs:
  fastaFiles:
    type: File[]
    inputBinding:
      position: 1

baseCommand: [ uparse_derep_workaround.sh ]

outputs:
  derepFasta:
    type: File
    outputBinding:
      glob: derep.fasta
