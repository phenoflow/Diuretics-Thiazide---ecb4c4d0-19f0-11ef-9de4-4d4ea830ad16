cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  diuretics-thiazide-025mg---primary:
    run: diuretics-thiazide-025mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  zestoretic-diuretics-thiazide---primary:
    run: zestoretic-diuretics-thiazide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-025mg---primary/output
  diuretics-thiazide-lisinopril---primary:
    run: diuretics-thiazide-lisinopril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: zestoretic-diuretics-thiazide---primary/output
  diuretics-thiazide-prolonged---primary:
    run: diuretics-thiazide-prolonged---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-lisinopril---primary/output
  diuretics-thiazide-squibb---primary:
    run: diuretics-thiazide-squibb---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-prolonged---primary/output
  diuretics-thiazide-200mg---primary:
    run: diuretics-thiazide-200mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-squibb---primary/output
  geigy-diuretics-thiazide---primary:
    run: geigy-diuretics-thiazide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-200mg---primary/output
  diuretics-thiazide-hydrochloride---primary:
    run: diuretics-thiazide-hydrochloride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: geigy-diuretics-thiazide---primary/output
  diuretics-thiazide-losartan---primary:
    run: diuretics-thiazide-losartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-hydrochloride---primary/output
  diuretics-thiazide-ashbourne---primary:
    run: diuretics-thiazide-ashbourne---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-losartan---primary/output
  diuretics-thiazide-tablet---primary:
    run: diuretics-thiazide-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-ashbourne---primary/output
  diuretics-thiazide-carace---primary:
    run: diuretics-thiazide-carace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-tablet---primary/output
  diuretics-thiazide-500mg---primary:
    run: diuretics-thiazide-500mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-carace---primary/output
  diuretics-thiazide-neonaclex---primary:
    run: diuretics-thiazide-neonaclex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-500mg---primary/output
  diuretics-thiazide-modified---primary:
    run: diuretics-thiazide-modified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-neonaclex---primary/output
  diuretics-thiazide-telmisartan---primary:
    run: diuretics-thiazide-telmisartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-modified---primary/output
  diuretics-thiazide-erbumine---primary:
    run: diuretics-thiazide-erbumine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-telmisartan---primary/output
  diuretics-thiazide-prestim---primary:
    run: diuretics-thiazide-prestim---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-erbumine---primary/output
  diuretics-thiazide-micardi---primary:
    run: diuretics-thiazide-micardi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-prestim---primary/output
  diuretics-thiazide-neobendromax---primary:
    run: diuretics-thiazide-neobendromax---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-micardi---primary/output
  diuretics-thiazide-genus---primary:
    run: diuretics-thiazide-genus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-neobendromax---primary/output
  diuretics-thiazide-cobetaloc---primary:
    run: diuretics-thiazide-cobetaloc---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-genus---primary/output
  diuretics-thiazide-valsartan---primary:
    run: diuretics-thiazide-valsartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-cobetaloc---primary/output
  diuretics-thiazide-irbesartan---primary:
    run: diuretics-thiazide-irbesartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-valsartan---primary/output
  diuretics-thiazide-navidrex---primary:
    run: diuretics-thiazide-navidrex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-irbesartan---primary/output
  diuretics-thiazide-astrazenec---primary:
    run: diuretics-thiazide-astrazenec---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-navidrex---primary/output
  diuretics-thiazide-novartis---primary:
    run: diuretics-thiazide-novartis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-astrazenec---primary/output
  diuretics-thiazide-capozide---primary:
    run: diuretics-thiazide-capozide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-novartis---primary/output
  diuretics-thiazide-250mg---primary:
    run: diuretics-thiazide-250mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-capozide---primary/output
  diuretics-thiazide-sevikar---primary:
    run: diuretics-thiazide-sevikar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-250mg---primary/output
  diuretics-thiazide-hillcross---primary:
    run: diuretics-thiazide-hillcross---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-sevikar---primary/output
  moduretic-diuretics-thiazide---primary:
    run: moduretic-diuretics-thiazide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-hillcross---primary/output
  diuretics-thiazide-dominion---primary:
    run: diuretics-thiazide-dominion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: moduretic-diuretics-thiazide---primary/output
  diuretics-thiazide-mercury---primary:
    run: diuretics-thiazide-mercury---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-dominion---primary/output
  diuretics-thiazide-olmetec---primary:
    run: diuretics-thiazide-olmetec---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-mercury---primary/output
  diuretics-thiazide-capsule---primary:
    run: diuretics-thiazide-capsule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-olmetec---primary/output
  diuretics-thiazide-tenchlor---primary:
    run: diuretics-thiazide-tenchlor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-capsule---primary/output
  diuretics-thiazide-natrilix---primary:
    run: diuretics-thiazide-natrilix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-tenchlor---primary/output
  diuretics-thiazide-kalspare---primary:
    run: diuretics-thiazide-kalspare---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-natrilix---primary/output
  diuretics-thiazide-medoxomil---primary:
    run: diuretics-thiazide-medoxomil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-kalspare---primary/output
  diuretics-thiazide-pfizer---primary:
    run: diuretics-thiazide-pfizer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-medoxomil---primary/output
  corgaretic-diuretics-thiazide---primary:
    run: corgaretic-diuretics-thiazide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-pfizer---primary/output
  diuretics-thiazide-pharm---primary:
    run: diuretics-thiazide-pharm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: corgaretic-diuretics-thiazide---primary/output
  diuretics-thiazide-150mg---primary:
    run: diuretics-thiazide-150mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-pharm---primary/output
  diuretics-thiazide-coversyl---primary:
    run: diuretics-thiazide-coversyl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-150mg---primary/output
  diuretics-thiazide-burgess---primary:
    run: diuretics-thiazide-burgess---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-coversyl---primary/output
  diuretics-thiazide-coaprovel---primary:
    run: diuretics-thiazide-coaprovel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-burgess---primary/output
  diuretics-thiazide-abbott---primary:
    run: diuretics-thiazide-abbott---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-coaprovel---primary/output
  diuretics-thiazide-cozaarcomp---primary:
    run: diuretics-thiazide-cozaarcomp---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-abbott---primary/output
  diuretics-thiazide-amlodipine---primary:
    run: diuretics-thiazide-amlodipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-cozaarcomp---primary/output
  diuretics-thiazide-suspension---primary:
    run: diuretics-thiazide-suspension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-amlodipine---primary/output
  diuretics-thiazide-atenolol---primary:
    run: diuretics-thiazide-atenolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-suspension---primary/output
  diuretics-thiazide-berkozide---primary:
    run: diuretics-thiazide-berkozide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-atenolol---primary/output
  diuretics-thiazide-triamterene---primary:
    run: diuretics-thiazide-triamterene---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-berkozide---primary/output
  diuretics-thiazide-tartrate---primary:
    run: diuretics-thiazide-tartrate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-triamterene---primary/output
  diuretics-thiazide-maleate---primary:
    run: diuretics-thiazide-maleate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-tartrate---primary/output
  diuretics-thiazide-aprinox---primary:
    run: diuretics-thiazide-aprinox---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-maleate---primary/output
  diuretics-thiazide-100mg---primary:
    run: diuretics-thiazide-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-aprinox---primary/output
  diuretics-thiazide-goldshield---primary:
    run: diuretics-thiazide-goldshield---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-100mg---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: diuretics-thiazide-goldshield---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
