; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S2 = type { i8, i8, %struct.S1 }
%struct.S1 = type { i32, i32 }

@objects = common global [3 x %struct.S2] zeroinitializer, align 16, !dbg !0
@.str = private unnamed_addr constant [67 x i8] c"objects[i].s2_s1.s1_a == (v1-1) && objects[i].s2_s1.s1_b == (v2-1)\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"main.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"objects[i].s2_a == c1 && objects[i].s2_b == c2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 !dbg !25 {
entry:
  %retval = alloca i32, align 4
  %v1 = alloca i32, align 4
  %v2 = alloca i32, align 4
  %i = alloca i32, align 4
  %c1 = alloca i8, align 1
  %c2 = alloca i8, align 1
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %v1, metadata !28, metadata !29), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %v2, metadata !31, metadata !29), !dbg !32
  store i32 48, i32* %v1, align 4, !dbg !33
  store i32 49, i32* %v2, align 4, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %i, metadata !35, metadata !29), !dbg !36
  store i32 0, i32* %i, align 4, !dbg !36
  br label %while.cond, !dbg !37

while.cond:                                       ; preds = %cond.end, %entry
  %0 = load i32, i32* %i, align 4, !dbg !38
  %cmp = icmp slt i32 %0, 3, !dbg !39
  br i1 %cmp, label %while.body, label %while.end, !dbg !37

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %v1, align 4, !dbg !40
  %2 = load i32, i32* %i, align 4, !dbg !42
  %idxprom = sext i32 %2 to i64, !dbg !43
  %arrayidx = getelementptr inbounds [3 x %struct.S2], [3 x %struct.S2]* @objects, i64 0, i64 %idxprom, !dbg !43
  %s2_s1 = getelementptr inbounds %struct.S2, %struct.S2* %arrayidx, i32 0, i32 2, !dbg !44
  %s1_a = getelementptr inbounds %struct.S1, %struct.S1* %s2_s1, i32 0, i32 0, !dbg !45
  store i32 %1, i32* %s1_a, align 4, !dbg !46
  %3 = load i32, i32* %v2, align 4, !dbg !47
  %4 = load i32, i32* %i, align 4, !dbg !48
  %idxprom1 = sext i32 %4 to i64, !dbg !49
  %arrayidx2 = getelementptr inbounds [3 x %struct.S2], [3 x %struct.S2]* @objects, i64 0, i64 %idxprom1, !dbg !49
  %s2_s13 = getelementptr inbounds %struct.S2, %struct.S2* %arrayidx2, i32 0, i32 2, !dbg !50
  %s1_b = getelementptr inbounds %struct.S1, %struct.S1* %s2_s13, i32 0, i32 1, !dbg !51
  store i32 %3, i32* %s1_b, align 4, !dbg !52
  %5 = load i32, i32* %v1, align 4, !dbg !53
  %inc = add nsw i32 %5, 1, !dbg !53
  store i32 %inc, i32* %v1, align 4, !dbg !53
  %6 = load i32, i32* %v2, align 4, !dbg !54
  %inc4 = add nsw i32 %6, 1, !dbg !54
  store i32 %inc4, i32* %v2, align 4, !dbg !54
  %7 = load i32, i32* %i, align 4, !dbg !55
  %idxprom5 = sext i32 %7 to i64, !dbg !55
  %arrayidx6 = getelementptr inbounds [3 x %struct.S2], [3 x %struct.S2]* @objects, i64 0, i64 %idxprom5, !dbg !55
  %s2_s17 = getelementptr inbounds %struct.S2, %struct.S2* %arrayidx6, i32 0, i32 2, !dbg !55
  %s1_a8 = getelementptr inbounds %struct.S1, %struct.S1* %s2_s17, i32 0, i32 0, !dbg !55
  %8 = load i32, i32* %s1_a8, align 4, !dbg !55
  %9 = load i32, i32* %v1, align 4, !dbg !55
  %sub = sub nsw i32 %9, 1, !dbg !55
  %cmp9 = icmp eq i32 %8, %sub, !dbg !55
  br i1 %cmp9, label %land.lhs.true, label %cond.false, !dbg !55

land.lhs.true:                                    ; preds = %while.body
  %10 = load i32, i32* %i, align 4, !dbg !55
  %idxprom10 = sext i32 %10 to i64, !dbg !55
  %arrayidx11 = getelementptr inbounds [3 x %struct.S2], [3 x %struct.S2]* @objects, i64 0, i64 %idxprom10, !dbg !55
  %s2_s112 = getelementptr inbounds %struct.S2, %struct.S2* %arrayidx11, i32 0, i32 2, !dbg !55
  %s1_b13 = getelementptr inbounds %struct.S1, %struct.S1* %s2_s112, i32 0, i32 1, !dbg !55
  %11 = load i32, i32* %s1_b13, align 4, !dbg !55
  %12 = load i32, i32* %v2, align 4, !dbg !55
  %sub14 = sub nsw i32 %12, 1, !dbg !55
  %cmp15 = icmp eq i32 %11, %sub14, !dbg !55
  br i1 %cmp15, label %cond.true, label %cond.false, !dbg !55

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end, !dbg !55

cond.false:                                       ; preds = %land.lhs.true, %while.body
  call void @__assert_fail(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #3, !dbg !55
  unreachable, !dbg !55
                                                  ; No predecessors!
  br label %cond.end, !dbg !55

cond.end:                                         ; preds = %13, %cond.true
  %14 = load i32, i32* %i, align 4, !dbg !56
  %inc16 = add nsw i32 %14, 1, !dbg !56
  store i32 %inc16, i32* %i, align 4, !dbg !56
  br label %while.cond, !dbg !37, !llvm.loop !57

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %i, align 4, !dbg !59
  call void @llvm.dbg.declare(metadata i8* %c1, metadata !60, metadata !29), !dbg !61
  store i8 48, i8* %c1, align 1, !dbg !61
  call void @llvm.dbg.declare(metadata i8* %c2, metadata !62, metadata !29), !dbg !63
  store i8 49, i8* %c2, align 1, !dbg !63
  br label %while.cond17, !dbg !64

while.cond17:                                     ; preds = %cond.end50, %while.end
  %15 = load i32, i32* %i, align 4, !dbg !65
  %cmp18 = icmp slt i32 %15, 3, !dbg !66
  br i1 %cmp18, label %while.body19, label %while.end54, !dbg !64

while.body19:                                     ; preds = %while.cond17
  %16 = load i32, i32* %i, align 4, !dbg !67
  %idxprom20 = sext i32 %16 to i64, !dbg !69
  %arrayidx21 = getelementptr inbounds [3 x %struct.S2], [3 x %struct.S2]* @objects, i64 0, i64 %idxprom20, !dbg !69
  %s2_s122 = getelementptr inbounds %struct.S2, %struct.S2* %arrayidx21, i32 0, i32 2, !dbg !70
  %s1_a23 = getelementptr inbounds %struct.S1, %struct.S1* %s2_s122, i32 0, i32 0, !dbg !71
  %17 = load i32, i32* %s1_a23, align 4, !dbg !71
  %conv = trunc i32 %17 to i8, !dbg !72
  %18 = load i32, i32* %i, align 4, !dbg !73
  %idxprom24 = sext i32 %18 to i64, !dbg !74
  %arrayidx25 = getelementptr inbounds [3 x %struct.S2], [3 x %struct.S2]* @objects, i64 0, i64 %idxprom24, !dbg !74
  %s2_a = getelementptr inbounds %struct.S2, %struct.S2* %arrayidx25, i32 0, i32 0, !dbg !75
  store i8 %conv, i8* %s2_a, align 4, !dbg !76
  %19 = load i32, i32* %i, align 4, !dbg !77
  %idxprom26 = sext i32 %19 to i64, !dbg !78
  %arrayidx27 = getelementptr inbounds [3 x %struct.S2], [3 x %struct.S2]* @objects, i64 0, i64 %idxprom26, !dbg !78
  %s2_s128 = getelementptr inbounds %struct.S2, %struct.S2* %arrayidx27, i32 0, i32 2, !dbg !79
  %s1_b29 = getelementptr inbounds %struct.S1, %struct.S1* %s2_s128, i32 0, i32 1, !dbg !80
  %20 = load i32, i32* %s1_b29, align 4, !dbg !80
  %conv30 = trunc i32 %20 to i8, !dbg !81
  %21 = load i32, i32* %i, align 4, !dbg !82
  %idxprom31 = sext i32 %21 to i64, !dbg !83
  %arrayidx32 = getelementptr inbounds [3 x %struct.S2], [3 x %struct.S2]* @objects, i64 0, i64 %idxprom31, !dbg !83
  %s2_b = getelementptr inbounds %struct.S2, %struct.S2* %arrayidx32, i32 0, i32 1, !dbg !84
  store i8 %conv30, i8* %s2_b, align 1, !dbg !85
  %22 = load i32, i32* %i, align 4, !dbg !86
  %idxprom33 = sext i32 %22 to i64, !dbg !86
  %arrayidx34 = getelementptr inbounds [3 x %struct.S2], [3 x %struct.S2]* @objects, i64 0, i64 %idxprom33, !dbg !86
  %s2_a35 = getelementptr inbounds %struct.S2, %struct.S2* %arrayidx34, i32 0, i32 0, !dbg !86
  %23 = load i8, i8* %s2_a35, align 4, !dbg !86
  %conv36 = sext i8 %23 to i32, !dbg !86
  %24 = load i8, i8* %c1, align 1, !dbg !86
  %conv37 = sext i8 %24 to i32, !dbg !86
  %cmp38 = icmp eq i32 %conv36, %conv37, !dbg !86
  br i1 %cmp38, label %land.lhs.true40, label %cond.false49, !dbg !86

land.lhs.true40:                                  ; preds = %while.body19
  %25 = load i32, i32* %i, align 4, !dbg !86
  %idxprom41 = sext i32 %25 to i64, !dbg !86
  %arrayidx42 = getelementptr inbounds [3 x %struct.S2], [3 x %struct.S2]* @objects, i64 0, i64 %idxprom41, !dbg !86
  %s2_b43 = getelementptr inbounds %struct.S2, %struct.S2* %arrayidx42, i32 0, i32 1, !dbg !86
  %26 = load i8, i8* %s2_b43, align 1, !dbg !86
  %conv44 = sext i8 %26 to i32, !dbg !86
  %27 = load i8, i8* %c2, align 1, !dbg !86
  %conv45 = sext i8 %27 to i32, !dbg !86
  %cmp46 = icmp eq i32 %conv44, %conv45, !dbg !86
  br i1 %cmp46, label %cond.true48, label %cond.false49, !dbg !86

cond.true48:                                      ; preds = %land.lhs.true40
  br label %cond.end50, !dbg !86

cond.false49:                                     ; preds = %land.lhs.true40, %while.body19
  call void @__assert_fail(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #3, !dbg !86
  unreachable, !dbg !86
                                                  ; No predecessors!
  br label %cond.end50, !dbg !86

cond.end50:                                       ; preds = %28, %cond.true48
  %29 = load i8, i8* %c1, align 1, !dbg !87
  %inc51 = add i8 %29, 1, !dbg !87
  store i8 %inc51, i8* %c1, align 1, !dbg !87
  %30 = load i8, i8* %c2, align 1, !dbg !88
  %inc52 = add i8 %30, 1, !dbg !88
  store i8 %inc52, i8* %c2, align 1, !dbg !88
  %31 = load i32, i32* %i, align 4, !dbg !89
  %inc53 = add nsw i32 %31, 1, !dbg !89
  store i32 %inc53, i32* %i, align 4, !dbg !89
  br label %while.cond17, !dbg !64, !llvm.loop !90

while.end54:                                      ; preds = %while.cond17
  ret i32 0, !dbg !92
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!21, !22, !23}
!llvm.ident = !{!24}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "objects", scope: !2, file: !3, line: 16, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 6.0.0 (http://llvm.org/git/clang.git f9faef8fd4d18005bc4eade77e012bf7f4e001ff) (http://llvm.org/git/llvm.git 1103886c3ddb28e4660d21f4ddaeb6f0a690ae7d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7)
!3 = !DIFile(filename: "main.c", directory: "/home/eti/Desktop/llvm2goto-git/struct_2")
!4 = !{}
!5 = !{!6}
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = !{!0}
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 288, elements: !19)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "S2", file: !3, line: 10, size: 96, elements: !10)
!10 = !{!11, !12, !13}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "s2_a", scope: !9, file: !3, line: 12, baseType: !6, size: 8)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "s2_b", scope: !9, file: !3, line: 13, baseType: !6, size: 8, offset: 8)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "s2_s1", scope: !9, file: !3, line: 15, baseType: !14, size: 64, offset: 32)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "S1", file: !3, line: 4, size: 64, elements: !15)
!15 = !{!16, !18}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "s1_a", scope: !14, file: !3, line: 6, baseType: !17, size: 32)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "s1_b", scope: !14, file: !3, line: 7, baseType: !17, size: 32, offset: 32)
!19 = !{!20}
!20 = !DISubrange(count: 3)
!21 = !{i32 2, !"Dwarf Version", i32 4}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{!"clang version 6.0.0 (http://llvm.org/git/clang.git f9faef8fd4d18005bc4eade77e012bf7f4e001ff) (http://llvm.org/git/llvm.git 1103886c3ddb28e4660d21f4ddaeb6f0a690ae7d)"}
!25 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 18, type: !26, isLocal: false, isDefinition: true, scopeLine: 19, isOptimized: false, unit: !2, variables: !4)
!26 = !DISubroutineType(types: !27)
!27 = !{!17}
!28 = !DILocalVariable(name: "v1", scope: !25, file: !3, line: 20, type: !17)
!29 = !DIExpression()
!30 = !DILocation(line: 20, column: 6, scope: !25)
!31 = !DILocalVariable(name: "v2", scope: !25, file: !3, line: 20, type: !17)
!32 = !DILocation(line: 20, column: 10, scope: !25)
!33 = !DILocation(line: 21, column: 5, scope: !25)
!34 = !DILocation(line: 22, column: 5, scope: !25)
!35 = !DILocalVariable(name: "i", scope: !25, file: !3, line: 24, type: !17)
!36 = !DILocation(line: 24, column: 6, scope: !25)
!37 = !DILocation(line: 25, column: 2, scope: !25)
!38 = !DILocation(line: 25, column: 8, scope: !25)
!39 = !DILocation(line: 25, column: 9, scope: !25)
!40 = !DILocation(line: 27, column: 27, scope: !41)
!41 = distinct !DILexicalBlock(scope: !25, file: !3, line: 26, column: 2)
!42 = !DILocation(line: 27, column: 11, scope: !41)
!43 = !DILocation(line: 27, column: 3, scope: !41)
!44 = !DILocation(line: 27, column: 14, scope: !41)
!45 = !DILocation(line: 27, column: 20, scope: !41)
!46 = !DILocation(line: 27, column: 25, scope: !41)
!47 = !DILocation(line: 28, column: 27, scope: !41)
!48 = !DILocation(line: 28, column: 11, scope: !41)
!49 = !DILocation(line: 28, column: 3, scope: !41)
!50 = !DILocation(line: 28, column: 14, scope: !41)
!51 = !DILocation(line: 28, column: 20, scope: !41)
!52 = !DILocation(line: 28, column: 25, scope: !41)
!53 = !DILocation(line: 29, column: 5, scope: !41)
!54 = !DILocation(line: 30, column: 5, scope: !41)
!55 = !DILocation(line: 32, column: 3, scope: !41)
!56 = !DILocation(line: 33, column: 4, scope: !41)
!57 = distinct !{!57, !37, !58}
!58 = !DILocation(line: 34, column: 2, scope: !25)
!59 = !DILocation(line: 36, column: 3, scope: !25)
!60 = !DILocalVariable(name: "c1", scope: !25, file: !3, line: 37, type: !6)
!61 = !DILocation(line: 37, column: 7, scope: !25)
!62 = !DILocalVariable(name: "c2", scope: !25, file: !3, line: 38, type: !6)
!63 = !DILocation(line: 38, column: 7, scope: !25)
!64 = !DILocation(line: 40, column: 2, scope: !25)
!65 = !DILocation(line: 40, column: 8, scope: !25)
!66 = !DILocation(line: 40, column: 9, scope: !25)
!67 = !DILocation(line: 42, column: 36, scope: !68)
!68 = distinct !DILexicalBlock(scope: !25, file: !3, line: 41, column: 2)
!69 = !DILocation(line: 42, column: 28, scope: !68)
!70 = !DILocation(line: 42, column: 39, scope: !68)
!71 = !DILocation(line: 42, column: 45, scope: !68)
!72 = !DILocation(line: 42, column: 21, scope: !68)
!73 = !DILocation(line: 42, column: 11, scope: !68)
!74 = !DILocation(line: 42, column: 3, scope: !68)
!75 = !DILocation(line: 42, column: 14, scope: !68)
!76 = !DILocation(line: 42, column: 19, scope: !68)
!77 = !DILocation(line: 43, column: 36, scope: !68)
!78 = !DILocation(line: 43, column: 28, scope: !68)
!79 = !DILocation(line: 43, column: 39, scope: !68)
!80 = !DILocation(line: 43, column: 45, scope: !68)
!81 = !DILocation(line: 43, column: 21, scope: !68)
!82 = !DILocation(line: 43, column: 11, scope: !68)
!83 = !DILocation(line: 43, column: 3, scope: !68)
!84 = !DILocation(line: 43, column: 14, scope: !68)
!85 = !DILocation(line: 43, column: 19, scope: !68)
!86 = !DILocation(line: 45, column: 3, scope: !68)
!87 = !DILocation(line: 47, column: 5, scope: !68)
!88 = !DILocation(line: 48, column: 5, scope: !68)
!89 = !DILocation(line: 49, column: 4, scope: !68)
!90 = distinct !{!90, !64, !91}
!91 = !DILocation(line: 50, column: 2, scope: !25)
!92 = !DILocation(line: 53, column: 2, scope: !25)
