; ModuleID = '/home/rasika/llvm2goto/eti/if1/main.c'
source_filename = "/home/rasika/llvm2goto/eti/if1/main.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 !dbg !6 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !10, metadata !11), !dbg !12
  %0 = load i32, i32* %i, align 4, !dbg !13
  %cmp = icmp eq i32 %0, 1, !dbg !15
  br i1 %cmp, label %if.then, label %if.else, !dbg !16

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %i, align 4, !dbg !17
  %cmp1 = icmp eq i32 %1, 1, !dbg !18
  %conv = zext i1 %cmp1 to i32, !dbg !18
  %call = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 %conv), !dbg !19
  br label %if.end, !dbg !19

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %i, align 4, !dbg !20
  %cmp2 = icmp ne i32 %2, 1, !dbg !21
  %conv3 = zext i1 %cmp2 to i32, !dbg !21
  %call4 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 %conv3), !dbg !22
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !23
  ret i32 %3, !dbg !23
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @assert(...) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 5.0.0 (trunk 295264)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/home/rasika/llvm2goto/eti/if1/main.c", directory: "/home/rasika/llvm2goto/eti")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 5.0.0 (trunk 295264)"}
!6 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 1, type: !7, isLocal: false, isDefinition: true, scopeLine: 2, isOptimized: false, unit: !0, variables: !2)
!7 = !DISubroutineType(types: !8)
!8 = !{!9}
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DILocalVariable(name: "i", scope: !6, file: !1, line: 3, type: !9)
!11 = !DIExpression()
!12 = !DILocation(line: 3, column: 7, scope: !6)
!13 = !DILocation(line: 5, column: 6, scope: !14)
!14 = distinct !DILexicalBlock(scope: !6, file: !1, line: 5, column: 6)
!15 = !DILocation(line: 5, column: 7, scope: !14)
!16 = !DILocation(line: 5, column: 6, scope: !6)
!17 = !DILocation(line: 6, column: 12, scope: !14)
!18 = !DILocation(line: 6, column: 13, scope: !14)
!19 = !DILocation(line: 6, column: 5, scope: !14)
!20 = !DILocation(line: 8, column: 12, scope: !14)
!21 = !DILocation(line: 8, column: 13, scope: !14)
!22 = !DILocation(line: 8, column: 5, scope: !14)
!23 = !DILocation(line: 9, column: 1, scope: !6)
