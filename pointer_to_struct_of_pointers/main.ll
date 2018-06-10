; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { [3 x i32*] }

@s_arr = common global [3 x %struct.S] zeroinitializer, align 16, !dbg !0

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 !dbg !19 {
entry:
  %retval = alloca i32, align 4
  %array = alloca [3 x [3 x i32]], align 16
  %temp = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %s_ptr = alloca %struct.S*, align 8
  %i10 = alloca i32, align 4
  %j14 = alloca i32, align 4
  %x = alloca i32, align 4
  %i31 = alloca i32, align 4
  %j35 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata [3 x [3 x i32]]* %array, metadata !22, metadata !25), !dbg !26
  call void @llvm.dbg.declare(metadata i32* %temp, metadata !27, metadata !25), !dbg !28
  store i32 11, i32* %temp, align 4, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %i, metadata !29, metadata !25), !dbg !31
  store i32 0, i32* %i, align 4, !dbg !31
  br label %for.cond, !dbg !32

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, i32* %i, align 4, !dbg !33
  %cmp = icmp slt i32 %0, 3, !dbg !35
  br i1 %cmp, label %for.body, label %for.end9, !dbg !36

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %j, metadata !37, metadata !25), !dbg !40
  store i32 0, i32* %j, align 4, !dbg !40
  br label %for.cond1, !dbg !41

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4, !dbg !42
  %cmp2 = icmp slt i32 %1, 3, !dbg !44
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !45

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, i32* %temp, align 4, !dbg !46
  %3 = load i32, i32* %i, align 4, !dbg !48
  %idxprom = sext i32 %3 to i64, !dbg !49
  %arrayidx = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %array, i64 0, i64 %idxprom, !dbg !49
  %4 = load i32, i32* %j, align 4, !dbg !50
  %idxprom4 = sext i32 %4 to i64, !dbg !49
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx, i64 0, i64 %idxprom4, !dbg !49
  store i32 %2, i32* %arrayidx5, align 4, !dbg !51
  %5 = load i32, i32* %temp, align 4, !dbg !52
  %inc = add nsw i32 %5, 1, !dbg !52
  store i32 %inc, i32* %temp, align 4, !dbg !52
  br label %for.inc, !dbg !53

for.inc:                                          ; preds = %for.body3
  %6 = load i32, i32* %j, align 4, !dbg !54
  %inc6 = add nsw i32 %6, 1, !dbg !54
  store i32 %inc6, i32* %j, align 4, !dbg !54
  br label %for.cond1, !dbg !55, !llvm.loop !56

for.end:                                          ; preds = %for.cond1
  br label %for.inc7, !dbg !58

for.inc7:                                         ; preds = %for.end
  %7 = load i32, i32* %i, align 4, !dbg !59
  %inc8 = add nsw i32 %7, 1, !dbg !59
  store i32 %inc8, i32* %i, align 4, !dbg !59
  br label %for.cond, !dbg !60, !llvm.loop !61

for.end9:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.S** %s_ptr, metadata !63, metadata !25), !dbg !65
  store %struct.S* getelementptr inbounds ([3 x %struct.S], [3 x %struct.S]* @s_arr, i32 0, i32 0), %struct.S** %s_ptr, align 8, !dbg !66
  call void @llvm.dbg.declare(metadata i32* %i10, metadata !67, metadata !25), !dbg !69
  store i32 0, i32* %i10, align 4, !dbg !69
  br label %for.cond11, !dbg !70

for.cond11:                                       ; preds = %for.inc28, %for.end9
  %8 = load i32, i32* %i10, align 4, !dbg !71
  %cmp12 = icmp slt i32 %8, 3, !dbg !73
  br i1 %cmp12, label %for.body13, label %for.end30, !dbg !74

for.body13:                                       ; preds = %for.cond11
  call void @llvm.dbg.declare(metadata i32* %j14, metadata !75, metadata !25), !dbg !78
  store i32 0, i32* %j14, align 4, !dbg !78
  br label %for.cond15, !dbg !79

for.cond15:                                       ; preds = %for.inc25, %for.body13
  %9 = load i32, i32* %j14, align 4, !dbg !80
  %cmp16 = icmp slt i32 %9, 3, !dbg !82
  br i1 %cmp16, label %for.body17, label %for.end27, !dbg !83

for.body17:                                       ; preds = %for.cond15
  %arraydecay = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %array, i32 0, i32 0, !dbg !84
  %10 = load i32, i32* %i10, align 4, !dbg !86
  %idx.ext = sext i32 %10 to i64, !dbg !87
  %add.ptr = getelementptr inbounds [3 x i32], [3 x i32]* %arraydecay, i64 %idx.ext, !dbg !87
  %arraydecay18 = getelementptr inbounds [3 x i32], [3 x i32]* %add.ptr, i32 0, i32 0, !dbg !88
  %11 = load i32, i32* %j14, align 4, !dbg !89
  %idx.ext19 = sext i32 %11 to i64, !dbg !90
  %add.ptr20 = getelementptr inbounds i32, i32* %arraydecay18, i64 %idx.ext19, !dbg !90
  %12 = load i32, i32* %i10, align 4, !dbg !91
  %idxprom21 = sext i32 %12 to i64, !dbg !92
  %arrayidx22 = getelementptr inbounds [3 x %struct.S], [3 x %struct.S]* @s_arr, i64 0, i64 %idxprom21, !dbg !92
  %ptrs = getelementptr inbounds %struct.S, %struct.S* %arrayidx22, i32 0, i32 0, !dbg !93
  %13 = load i32, i32* %j14, align 4, !dbg !94
  %idxprom23 = sext i32 %13 to i64, !dbg !92
  %arrayidx24 = getelementptr inbounds [3 x i32*], [3 x i32*]* %ptrs, i64 0, i64 %idxprom23, !dbg !92
  store i32* %add.ptr20, i32** %arrayidx24, align 8, !dbg !95
  br label %for.inc25, !dbg !96

for.inc25:                                        ; preds = %for.body17
  %14 = load i32, i32* %j14, align 4, !dbg !97
  %inc26 = add nsw i32 %14, 1, !dbg !97
  store i32 %inc26, i32* %j14, align 4, !dbg !97
  br label %for.cond15, !dbg !98, !llvm.loop !99

for.end27:                                        ; preds = %for.cond15
  br label %for.inc28, !dbg !101

for.inc28:                                        ; preds = %for.end27
  %15 = load i32, i32* %i10, align 4, !dbg !102
  %inc29 = add nsw i32 %15, 1, !dbg !102
  store i32 %inc29, i32* %i10, align 4, !dbg !102
  br label %for.cond11, !dbg !103, !llvm.loop !104

for.end30:                                        ; preds = %for.cond11
  call void @llvm.dbg.declare(metadata i32* %x, metadata !106, metadata !25), !dbg !107
  store i32 11, i32* %x, align 4, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %i31, metadata !108, metadata !25), !dbg !110
  store i32 0, i32* %i31, align 4, !dbg !110
  br label %for.cond32, !dbg !111

for.cond32:                                       ; preds = %for.inc49, %for.end30
  %16 = load i32, i32* %i31, align 4, !dbg !112
  %cmp33 = icmp slt i32 %16, 3, !dbg !114
  br i1 %cmp33, label %for.body34, label %for.end51, !dbg !115

for.body34:                                       ; preds = %for.cond32
  call void @llvm.dbg.declare(metadata i32* %j35, metadata !116, metadata !25), !dbg !119
  store i32 0, i32* %j35, align 4, !dbg !119
  br label %for.cond36, !dbg !120

for.cond36:                                       ; preds = %for.inc46, %for.body34
  %17 = load i32, i32* %j35, align 4, !dbg !121
  %cmp37 = icmp slt i32 %17, 3, !dbg !123
  br i1 %cmp37, label %for.body38, label %for.end48, !dbg !124

for.body38:                                       ; preds = %for.cond36
  %18 = load %struct.S*, %struct.S** %s_ptr, align 8, !dbg !125
  %19 = load i32, i32* %i31, align 4, !dbg !127
  %idx.ext39 = sext i32 %19 to i64, !dbg !128
  %add.ptr40 = getelementptr inbounds %struct.S, %struct.S* %18, i64 %idx.ext39, !dbg !128
  %ptrs41 = getelementptr inbounds %struct.S, %struct.S* %add.ptr40, i32 0, i32 0, !dbg !129
  %20 = load i32, i32* %j35, align 4, !dbg !130
  %idxprom42 = sext i32 %20 to i64, !dbg !131
  %arrayidx43 = getelementptr inbounds [3 x i32*], [3 x i32*]* %ptrs41, i64 0, i64 %idxprom42, !dbg !131
  %21 = load i32*, i32** %arrayidx43, align 8, !dbg !131
  %22 = load i32, i32* %21, align 4, !dbg !132
  %23 = load i32, i32* %x, align 4, !dbg !133
  %cmp44 = icmp eq i32 %22, %23, !dbg !134
  %conv = zext i1 %cmp44 to i32, !dbg !134
  %call = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 %conv), !dbg !135
  %24 = load i32, i32* %x, align 4, !dbg !136
  %inc45 = add nsw i32 %24, 1, !dbg !136
  store i32 %inc45, i32* %x, align 4, !dbg !136
  br label %for.inc46, !dbg !137

for.inc46:                                        ; preds = %for.body38
  %25 = load i32, i32* %j35, align 4, !dbg !138
  %inc47 = add nsw i32 %25, 1, !dbg !138
  store i32 %inc47, i32* %j35, align 4, !dbg !138
  br label %for.cond36, !dbg !139, !llvm.loop !140

for.end48:                                        ; preds = %for.cond36
  br label %for.inc49, !dbg !142

for.inc49:                                        ; preds = %for.end48
  %26 = load i32, i32* %i31, align 4, !dbg !143
  %inc50 = add nsw i32 %26, 1, !dbg !143
  store i32 %inc50, i32* %i31, align 4, !dbg !143
  br label %for.cond32, !dbg !144, !llvm.loop !145

for.end51:                                        ; preds = %for.cond32
  ret i32 0, !dbg !147
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @assert(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "s_arr", scope: !2, file: !3, line: 4, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 6.0.0 (http://llvm.org/git/clang.git f9faef8fd4d18005bc4eade77e012bf7f4e001ff) (http://llvm.org/git/llvm.git 1103886c3ddb28e4660d21f4ddaeb6f0a690ae7d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "main.c", directory: "/home/eti/Desktop/llvm2goto-git/pointer_to_struct_of_pointers")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 576, elements: !13)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "S", file: !3, line: 1, size: 192, elements: !8)
!8 = !{!9}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "ptrs", scope: !7, file: !3, line: 3, baseType: !10, size: 192)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 192, elements: !13)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14}
!14 = !DISubrange(count: 3)
!15 = !{i32 2, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{!"clang version 6.0.0 (http://llvm.org/git/clang.git f9faef8fd4d18005bc4eade77e012bf7f4e001ff) (http://llvm.org/git/llvm.git 1103886c3ddb28e4660d21f4ddaeb6f0a690ae7d)"}
!19 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 6, type: !20, isLocal: false, isDefinition: true, scopeLine: 7, isOptimized: false, unit: !2, variables: !4)
!20 = !DISubroutineType(types: !21)
!21 = !{!12}
!22 = !DILocalVariable(name: "array", scope: !19, file: !3, line: 8, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 288, elements: !24)
!24 = !{!14, !14}
!25 = !DIExpression()
!26 = !DILocation(line: 8, column: 6, scope: !19)
!27 = !DILocalVariable(name: "temp", scope: !19, file: !3, line: 9, type: !12)
!28 = !DILocation(line: 9, column: 6, scope: !19)
!29 = !DILocalVariable(name: "i", scope: !30, file: !3, line: 11, type: !12)
!30 = distinct !DILexicalBlock(scope: !19, file: !3, line: 11, column: 2)
!31 = !DILocation(line: 11, column: 10, scope: !30)
!32 = !DILocation(line: 11, column: 6, scope: !30)
!33 = !DILocation(line: 11, column: 16, scope: !34)
!34 = distinct !DILexicalBlock(scope: !30, file: !3, line: 11, column: 2)
!35 = !DILocation(line: 11, column: 17, scope: !34)
!36 = !DILocation(line: 11, column: 2, scope: !30)
!37 = !DILocalVariable(name: "j", scope: !38, file: !3, line: 13, type: !12)
!38 = distinct !DILexicalBlock(scope: !39, file: !3, line: 13, column: 4)
!39 = distinct !DILexicalBlock(scope: !34, file: !3, line: 12, column: 2)
!40 = !DILocation(line: 13, column: 12, scope: !38)
!41 = !DILocation(line: 13, column: 8, scope: !38)
!42 = !DILocation(line: 13, column: 18, scope: !43)
!43 = distinct !DILexicalBlock(scope: !38, file: !3, line: 13, column: 4)
!44 = !DILocation(line: 13, column: 19, scope: !43)
!45 = !DILocation(line: 13, column: 4, scope: !38)
!46 = !DILocation(line: 15, column: 30, scope: !47)
!47 = distinct !DILexicalBlock(scope: !43, file: !3, line: 14, column: 4)
!48 = !DILocation(line: 15, column: 22, scope: !47)
!49 = !DILocation(line: 15, column: 16, scope: !47)
!50 = !DILocation(line: 15, column: 25, scope: !47)
!51 = !DILocation(line: 15, column: 28, scope: !47)
!52 = !DILocation(line: 16, column: 20, scope: !47)
!53 = !DILocation(line: 17, column: 11, scope: !47)
!54 = !DILocation(line: 13, column: 25, scope: !43)
!55 = !DILocation(line: 13, column: 4, scope: !43)
!56 = distinct !{!56, !45, !57}
!57 = !DILocation(line: 17, column: 11, scope: !38)
!58 = !DILocation(line: 18, column: 9, scope: !39)
!59 = !DILocation(line: 11, column: 23, scope: !34)
!60 = !DILocation(line: 11, column: 2, scope: !34)
!61 = distinct !{!61, !36, !62}
!62 = !DILocation(line: 18, column: 9, scope: !30)
!63 = !DILocalVariable(name: "s_ptr", scope: !19, file: !3, line: 20, type: !64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!65 = !DILocation(line: 20, column: 13, scope: !19)
!66 = !DILocation(line: 21, column: 8, scope: !19)
!67 = !DILocalVariable(name: "i", scope: !68, file: !3, line: 23, type: !12)
!68 = distinct !DILexicalBlock(scope: !19, file: !3, line: 23, column: 2)
!69 = !DILocation(line: 23, column: 10, scope: !68)
!70 = !DILocation(line: 23, column: 6, scope: !68)
!71 = !DILocation(line: 23, column: 16, scope: !72)
!72 = distinct !DILexicalBlock(scope: !68, file: !3, line: 23, column: 2)
!73 = !DILocation(line: 23, column: 17, scope: !72)
!74 = !DILocation(line: 23, column: 2, scope: !68)
!75 = !DILocalVariable(name: "j", scope: !76, file: !3, line: 25, type: !12)
!76 = distinct !DILexicalBlock(scope: !77, file: !3, line: 25, column: 3)
!77 = distinct !DILexicalBlock(scope: !72, file: !3, line: 24, column: 2)
!78 = !DILocation(line: 25, column: 11, scope: !76)
!79 = !DILocation(line: 25, column: 7, scope: !76)
!80 = !DILocation(line: 25, column: 17, scope: !81)
!81 = distinct !DILexicalBlock(scope: !76, file: !3, line: 25, column: 3)
!82 = !DILocation(line: 25, column: 18, scope: !81)
!83 = !DILocation(line: 25, column: 3, scope: !76)
!84 = !DILocation(line: 27, column: 26, scope: !85)
!85 = distinct !DILexicalBlock(scope: !81, file: !3, line: 26, column: 3)
!86 = !DILocation(line: 27, column: 32, scope: !85)
!87 = !DILocation(line: 27, column: 31, scope: !85)
!88 = !DILocation(line: 27, column: 24, scope: !85)
!89 = !DILocation(line: 27, column: 35, scope: !85)
!90 = !DILocation(line: 27, column: 34, scope: !85)
!91 = !DILocation(line: 27, column: 10, scope: !85)
!92 = !DILocation(line: 27, column: 4, scope: !85)
!93 = !DILocation(line: 27, column: 13, scope: !85)
!94 = !DILocation(line: 27, column: 18, scope: !85)
!95 = !DILocation(line: 27, column: 21, scope: !85)
!96 = !DILocation(line: 28, column: 3, scope: !85)
!97 = !DILocation(line: 25, column: 23, scope: !81)
!98 = !DILocation(line: 25, column: 3, scope: !81)
!99 = distinct !{!99, !83, !100}
!100 = !DILocation(line: 28, column: 3, scope: !76)
!101 = !DILocation(line: 29, column: 2, scope: !77)
!102 = !DILocation(line: 23, column: 23, scope: !72)
!103 = !DILocation(line: 23, column: 2, scope: !72)
!104 = distinct !{!104, !74, !105}
!105 = !DILocation(line: 29, column: 2, scope: !68)
!106 = !DILocalVariable(name: "x", scope: !19, file: !3, line: 31, type: !12)
!107 = !DILocation(line: 31, column: 6, scope: !19)
!108 = !DILocalVariable(name: "i", scope: !109, file: !3, line: 32, type: !12)
!109 = distinct !DILexicalBlock(scope: !19, file: !3, line: 32, column: 2)
!110 = !DILocation(line: 32, column: 10, scope: !109)
!111 = !DILocation(line: 32, column: 6, scope: !109)
!112 = !DILocation(line: 32, column: 16, scope: !113)
!113 = distinct !DILexicalBlock(scope: !109, file: !3, line: 32, column: 2)
!114 = !DILocation(line: 32, column: 17, scope: !113)
!115 = !DILocation(line: 32, column: 2, scope: !109)
!116 = !DILocalVariable(name: "j", scope: !117, file: !3, line: 34, type: !12)
!117 = distinct !DILexicalBlock(scope: !118, file: !3, line: 34, column: 3)
!118 = distinct !DILexicalBlock(scope: !113, file: !3, line: 33, column: 2)
!119 = !DILocation(line: 34, column: 11, scope: !117)
!120 = !DILocation(line: 34, column: 7, scope: !117)
!121 = !DILocation(line: 34, column: 17, scope: !122)
!122 = distinct !DILexicalBlock(scope: !117, file: !3, line: 34, column: 3)
!123 = !DILocation(line: 34, column: 18, scope: !122)
!124 = !DILocation(line: 34, column: 3, scope: !117)
!125 = !DILocation(line: 36, column: 16, scope: !126)
!126 = distinct !DILexicalBlock(scope: !122, file: !3, line: 35, column: 3)
!127 = !DILocation(line: 36, column: 22, scope: !126)
!128 = !DILocation(line: 36, column: 21, scope: !126)
!129 = !DILocation(line: 36, column: 26, scope: !126)
!130 = !DILocation(line: 36, column: 31, scope: !126)
!131 = !DILocation(line: 36, column: 13, scope: !126)
!132 = !DILocation(line: 36, column: 11, scope: !126)
!133 = !DILocation(line: 36, column: 38, scope: !126)
!134 = !DILocation(line: 36, column: 35, scope: !126)
!135 = !DILocation(line: 36, column: 4, scope: !126)
!136 = !DILocation(line: 37, column: 5, scope: !126)
!137 = !DILocation(line: 38, column: 3, scope: !126)
!138 = !DILocation(line: 34, column: 24, scope: !122)
!139 = !DILocation(line: 34, column: 3, scope: !122)
!140 = distinct !{!140, !124, !141}
!141 = !DILocation(line: 38, column: 3, scope: !117)
!142 = !DILocation(line: 39, column: 2, scope: !118)
!143 = !DILocation(line: 32, column: 23, scope: !113)
!144 = !DILocation(line: 32, column: 2, scope: !113)
!145 = distinct !{!145, !115, !146}
!146 = !DILocation(line: 39, column: 2, scope: !109)
!147 = !DILocation(line: 41, column: 2, scope: !19)
