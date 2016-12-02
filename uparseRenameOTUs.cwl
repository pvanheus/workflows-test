#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: CommandLineTool

inputs:
  fastaFile:
    type: File
    inputBinding:
      position: 1

baseCommand: [ fasta_number.py ]

arguments:
  - valueFrom: "OTU_"
    position: 2

stdout: otus_renamed.fasta

outputs:
  renamedFasta:
    type: stdout
