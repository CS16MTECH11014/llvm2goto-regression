; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define i32 @fun(i32* %arr, i32 %n) #0 !dbg !7 {
entry:
  %arr.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arr.addr, metadata !12, metadata !13), !dbg !14
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !15, metadata !13), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %x, metadata !17, metadata !13), !dbg !18
  %0 = load i32*, i32** %arr.addr, align 8, !dbg !19
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0, !dbg !19
  %1 = load i32, i32* %arrayidx, align 4, !dbg !19
  store i32 %1, i32* %x, align 4, !dbg !18
  call void @llvm.dbg.declare(metadata i32* %i, metadata !20, metadata !13), !dbg !22
  store i32 1, i32* %i, align 4, !dbg !22
  br label %for.cond, !dbg !23

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !24
  %3 = load i32, i32* %n.addr, align 4, !dbg !26
  %cmp = icmp slt i32 %2, %3, !dbg !27
  br i1 %cmp, label %for.body, label %for.end, !dbg !28

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %x, align 4, !dbg !29
  %5 = load i32*, i32** %arr.addr, align 8, !dbg !30
  %6 = load i32, i32* %i, align 4, !dbg !31
  %idxprom = sext i32 %6 to i64, !dbg !30
  %arrayidx1 = getelementptr inbounds i32, i32* %5, i64 %idxprom, !dbg !30
  %7 = load i32, i32* %arrayidx1, align 4, !dbg !30
  %xor = xor i32 %4, %7, !dbg !32
  store i32 %xor, i32* %x, align 4, !dbg !33
  br label %for.inc, !dbg !34

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !35
  %inc = add nsw i32 %8, 1, !dbg !35
  store i32 %inc, i32* %i, align 4, !dbg !35
  br label %for.cond, !dbg !36, !llvm.loop !37

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %x, align 4, !dbg !39
  ret i32 %9, !dbg !40
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 !dbg !41 {
entry:
  %retval = alloca i32, align 4
  %arr = alloca [13 x i32], align 16
  %x = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata [13 x i32]* %arr, metadata !44, metadata !13), !dbg !48
  %arrayidx = getelementptr inbounds [13 x i32], [13 x i32]* %arr, i64 0, i64 0, !dbg !49
  store i32 9, i32* %arrayidx, align 16, !dbg !50
  %arrayidx1 = getelementptr inbounds [13 x i32], [13 x i32]* %arr, i64 0, i64 1, !dbg !51
  store i32 12, i32* %arrayidx1, align 4, !dbg !52
  %arrayidx2 = getelementptr inbounds [13 x i32], [13 x i32]* %arr, i64 0, i64 2, !dbg !53
  store i32 2, i32* %arrayidx2, align 8, !dbg !54
  %arrayidx3 = getelementptr inbounds [13 x i32], [13 x i32]* %arr, i64 0, i64 3, !dbg !55
  store i32 11, i32* %arrayidx3, align 4, !dbg !56
  %arrayidx4 = getelementptr inbounds [13 x i32], [13 x i32]* %arr, i64 0, i64 4, !dbg !57
  store i32 2, i32* %arrayidx4, align 16, !dbg !58
  %arrayidx5 = getelementptr inbounds [13 x i32], [13 x i32]* %arr, i64 0, i64 5, !dbg !59
  store i32 2, i32* %arrayidx5, align 4, !dbg !60
  %arrayidx6 = getelementptr inbounds [13 x i32], [13 x i32]* %arr, i64 0, i64 6, !dbg !61
  store i32 10, i32* %arrayidx6, align 8, !dbg !62
  %arrayidx7 = getelementptr inbounds [13 x i32], [13 x i32]* %arr, i64 0, i64 7, !dbg !63
  store i32 9, i32* %arrayidx7, align 4, !dbg !64
  %arrayidx8 = getelementptr inbounds [13 x i32], [13 x i32]* %arr, i64 0, i64 8, !dbg !65
  store i32 12, i32* %arrayidx8, align 16, !dbg !66
  %arrayidx9 = getelementptr inbounds [13 x i32], [13 x i32]* %arr, i64 0, i64 9, !dbg !67
  store i32 10, i32* %arrayidx9, align 4, !dbg !68
  %arrayidx10 = getelementptr inbounds [13 x i32], [13 x i32]* %arr, i64 0, i64 10, !dbg !69
  store i32 9, i32* %arrayidx10, align 8, !dbg !70
  %arrayidx11 = getelementptr inbounds [13 x i32], [13 x i32]* %arr, i64 0, i64 11, !dbg !71
  store i32 11, i32* %arrayidx11, align 4, !dbg !72
  %arrayidx12 = getelementptr inbounds [13 x i32], [13 x i32]* %arr, i64 0, i64 12, !dbg !73
  store i32 2, i32* %arrayidx12, align 16, !dbg !74
  call void @llvm.dbg.declare(metadata i32* %x, metadata !75, metadata !13), !dbg !76
  %arraydecay = getelementptr inbounds [13 x i32], [13 x i32]* %arr, i32 0, i32 0, !dbg !77
  %call = call i32 @fun(i32* %arraydecay, i32 13), !dbg !78
  store i32 %call, i32* %x, align 4, !dbg !76
  %0 = load i32, i32* %x, align 4, !dbg !79
  %cmp = icmp eq i32 %0, 9, !dbg !80
  %conv = zext i1 %cmp to i32, !dbg !80
  %call13 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 %conv), !dbg !81
  ret i32 0, !dbg !82
}

declare i32 @assert(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 6.0.0 (http://llvm.org/git/clang.git f9faef8fd4d18005bc4eade77e012bf7f4e001ff) (http://llvm.org/git/llvm.git 1103886c3ddb28e4660d21f4ddaeb6f0a690ae7d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "main.c", directory: "/home/eti/Desktop/llvm2goto-git/bitwise_2")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0 (http://llvm.org/git/clang.git f9faef8fd4d18005bc4eade77e012bf7f4e001ff) (http://llvm.org/git/llvm.git 1103886c3ddb28e4660d21f4ddaeb6f0a690ae7d)"}
!7 = distinct !DISubprogram(name: "fun", scope: !1, file: !1, line: 1, type: !8, isLocal: false, isDefinition: true, scopeLine: 2, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!12 = !DILocalVariable(name: "arr", arg: 1, scope: !7, file: !1, line: 1, type: !11)
!13 = !DIExpression()
!14 = !DILocation(line: 1, column: 13, scope: !7)
!15 = !DILocalVariable(name: "n", arg: 2, scope: !7, file: !1, line: 1, type: !10)
!16 = !DILocation(line: 1, column: 24, scope: !7)
!17 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 3, type: !10)
!18 = !DILocation(line: 3, column: 9, scope: !7)
!19 = !DILocation(line: 3, column: 13, scope: !7)
!20 = !DILocalVariable(name: "i", scope: !21, file: !1, line: 4, type: !10)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 4, column: 5)
!22 = !DILocation(line: 4, column: 14, scope: !21)
!23 = !DILocation(line: 4, column: 10, scope: !21)
!24 = !DILocation(line: 4, column: 21, scope: !25)
!25 = distinct !DILexicalBlock(scope: !21, file: !1, line: 4, column: 5)
!26 = !DILocation(line: 4, column: 25, scope: !25)
!27 = !DILocation(line: 4, column: 23, scope: !25)
!28 = !DILocation(line: 4, column: 5, scope: !21)
!29 = !DILocation(line: 5, column: 13, scope: !25)
!30 = !DILocation(line: 5, column: 17, scope: !25)
!31 = !DILocation(line: 5, column: 21, scope: !25)
!32 = !DILocation(line: 5, column: 15, scope: !25)
!33 = !DILocation(line: 5, column: 11, scope: !25)
!34 = !DILocation(line: 5, column: 9, scope: !25)
!35 = !DILocation(line: 4, column: 29, scope: !25)
!36 = !DILocation(line: 4, column: 5, scope: !25)
!37 = distinct !{!37, !28, !38}
!38 = !DILocation(line: 5, column: 22, scope: !21)
!39 = !DILocation(line: 6, column: 12, scope: !7)
!40 = !DILocation(line: 6, column: 5, scope: !7)
!41 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 8, type: !42, isLocal: false, isDefinition: true, scopeLine: 9, isOptimized: false, unit: !0, variables: !2)
!42 = !DISubroutineType(types: !43)
!43 = !{!10}
!44 = !DILocalVariable(name: "arr", scope: !41, file: !1, line: 10, type: !45)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 416, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 13)
!48 = !DILocation(line: 10, column: 6, scope: !41)
!49 = !DILocation(line: 12, column: 2, scope: !41)
!50 = !DILocation(line: 12, column: 9, scope: !41)
!51 = !DILocation(line: 13, column: 2, scope: !41)
!52 = !DILocation(line: 13, column: 9, scope: !41)
!53 = !DILocation(line: 14, column: 2, scope: !41)
!54 = !DILocation(line: 14, column: 9, scope: !41)
!55 = !DILocation(line: 15, column: 2, scope: !41)
!56 = !DILocation(line: 15, column: 9, scope: !41)
!57 = !DILocation(line: 16, column: 2, scope: !41)
!58 = !DILocation(line: 16, column: 9, scope: !41)
!59 = !DILocation(line: 17, column: 2, scope: !41)
!60 = !DILocation(line: 17, column: 9, scope: !41)
!61 = !DILocation(line: 18, column: 2, scope: !41)
!62 = !DILocation(line: 18, column: 9, scope: !41)
!63 = !DILocation(line: 19, column: 2, scope: !41)
!64 = !DILocation(line: 19, column: 9, scope: !41)
!65 = !DILocation(line: 20, column: 2, scope: !41)
!66 = !DILocation(line: 20, column: 9, scope: !41)
!67 = !DILocation(line: 21, column: 2, scope: !41)
!68 = !DILocation(line: 21, column: 9, scope: !41)
!69 = !DILocation(line: 22, column: 2, scope: !41)
!70 = !DILocation(line: 22, column: 10, scope: !41)
!71 = !DILocation(line: 23, column: 2, scope: !41)
!72 = !DILocation(line: 23, column: 10, scope: !41)
!73 = !DILocation(line: 24, column: 2, scope: !41)
!74 = !DILocation(line: 24, column: 10, scope: !41)
!75 = !DILocalVariable(name: "x", scope: !41, file: !1, line: 25, type: !10)
!76 = !DILocation(line: 25, column: 6, scope: !41)
!77 = !DILocation(line: 25, column: 14, scope: !41)
!78 = !DILocation(line: 25, column: 10, scope: !41)
!79 = !DILocation(line: 27, column: 9, scope: !41)
!80 = !DILocation(line: 27, column: 10, scope: !41)
!81 = !DILocation(line: 27, column: 2, scope: !41)
!82 = !DILocation(line: 29, column: 2, scope: !41)
