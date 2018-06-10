; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = common global i32 0, align 4, !dbg !0
@y = common global i32 0, align 4, !dbg !6
@z = common global i32 0, align 4, !dbg !9
@main.array = private unnamed_addr constant [3 x [3 x i32*]] [[3 x i32*] [i32* @x, i32* null, i32* null], [3 x i32*] [i32* @y, i32* null, i32* null], [3 x i32*] [i32* @z, i32* null, i32* null]], align 16

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 !dbg !15 {
entry:
  %retval = alloca i32, align 4
  %array = alloca [3 x [3 x i32*]], align 16
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %p = alloca i32*, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata [3 x [3 x i32*]]* %array, metadata !18, metadata !24), !dbg !25
  %0 = bitcast [3 x [3 x i32*]]* %array to i8*, !dbg !25
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([3 x [3 x i32*]]* @main.array to i8*), i64 72, i32 16, i1 false), !dbg !25
  %arrayidx = getelementptr inbounds [3 x [3 x i32*]], [3 x [3 x i32*]]* %array, i64 0, i64 1, !dbg !26
  %arrayidx1 = getelementptr inbounds [3 x i32*], [3 x i32*]* %arrayidx, i64 0, i64 0, !dbg !26
  %1 = load i32*, i32** %arrayidx1, align 8, !dbg !26
  %arrayidx2 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !26
  store i32 ptrtoint (i32* @x to i32), i32* %arrayidx2, align 4, !dbg !27
  %arrayidx3 = getelementptr inbounds [3 x [3 x i32*]], [3 x [3 x i32*]]* %array, i64 0, i64 2, !dbg !28
  %arrayidx4 = getelementptr inbounds [3 x i32*], [3 x i32*]* %arrayidx3, i64 0, i64 0, !dbg !28
  %2 = load i32*, i32** %arrayidx4, align 16, !dbg !28
  %arrayidx5 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !28
  store i32 ptrtoint (i32* @y to i32), i32* %arrayidx5, align 4, !dbg !29
  %arrayidx6 = getelementptr inbounds [3 x [3 x i32*]], [3 x [3 x i32*]]* %array, i64 0, i64 3, !dbg !30
  %arrayidx7 = getelementptr inbounds [3 x i32*], [3 x i32*]* %arrayidx6, i64 0, i64 0, !dbg !30
  %3 = load i32*, i32** %arrayidx7, align 8, !dbg !30
  %arrayidx8 = getelementptr inbounds i32, i32* %3, i64 0, !dbg !30
  store i32 ptrtoint (i32* @z to i32), i32* %arrayidx8, align 4, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %a, metadata !32, metadata !24), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %b, metadata !35, metadata !24), !dbg !36
  %call = call i32 (...) @nondet_uint(), !dbg !37
  store i32 %call, i32* %a, align 4, !dbg !38
  %call9 = call i32 (...) @nondet_uint(), !dbg !39
  store i32 %call9, i32* %b, align 4, !dbg !40
  %4 = load i32, i32* %a, align 4, !dbg !41
  %cmp = icmp ult i32 %4, 3, !dbg !42
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !43

land.rhs:                                         ; preds = %entry
  %5 = load i32, i32* %b, align 4, !dbg !44
  %cmp10 = icmp ult i32 %5, 3, !dbg !45
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %cmp10, %land.rhs ]
  %land.ext = zext i1 %6 to i32, !dbg !43
  %call11 = call i32 (i32, ...) bitcast (i32 (...)* @assume to i32 (i32, ...)*)(i32 %land.ext), !dbg !46
  %7 = load i32, i32* %a, align 4, !dbg !47
  %idxprom = zext i32 %7 to i64, !dbg !48
  %arrayidx12 = getelementptr inbounds [3 x [3 x i32*]], [3 x [3 x i32*]]* %array, i64 0, i64 %idxprom, !dbg !48
  %8 = load i32, i32* %b, align 4, !dbg !49
  %idxprom13 = zext i32 %8 to i64, !dbg !48
  %arrayidx14 = getelementptr inbounds [3 x i32*], [3 x i32*]* %arrayidx12, i64 0, i64 %idxprom13, !dbg !48
  store i32* @z, i32** %arrayidx14, align 8, !dbg !50
  call void @llvm.dbg.declare(metadata i32** %p, metadata !51, metadata !24), !dbg !52
  %9 = load i32, i32* %a, align 4, !dbg !53
  %idxprom15 = zext i32 %9 to i64, !dbg !54
  %arrayidx16 = getelementptr inbounds [3 x [3 x i32*]], [3 x [3 x i32*]]* %array, i64 0, i64 %idxprom15, !dbg !54
  %10 = load i32, i32* %b, align 4, !dbg !55
  %idxprom17 = zext i32 %10 to i64, !dbg !54
  %arrayidx18 = getelementptr inbounds [3 x i32*], [3 x i32*]* %arrayidx16, i64 0, i64 %idxprom17, !dbg !54
  %11 = load i32*, i32** %arrayidx18, align 8, !dbg !54
  store i32* %11, i32** %p, align 8, !dbg !56
  %12 = load i32*, i32** %p, align 8, !dbg !57
  store i32 1, i32* %12, align 4, !dbg !58
  %13 = load i32, i32* @z, align 4, !dbg !59
  %cmp19 = icmp eq i32 %13, 1, !dbg !60
  %conv = zext i1 %cmp19 to i32, !dbg !60
  %call20 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 %conv), !dbg !61
  %14 = load i32, i32* %retval, align 4, !dbg !62
  ret i32 %14, !dbg !62
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @nondet_uint(...) #3

declare i32 @assume(...) #3

declare i32 @assert(...) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !3, line: 5, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 6.0.0 (http://llvm.org/git/clang.git f9faef8fd4d18005bc4eade77e012bf7f4e001ff) (http://llvm.org/git/llvm.git 1103886c3ddb28e4660d21f4ddaeb6f0a690ae7d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "main.c", directory: "/home/eti/Desktop/llvm2goto-git/Multi_Dimensional_Array3")
!4 = !{}
!5 = !{!0, !6, !9}
!6 = !DIGlobalVariableExpression(var: !7)
!7 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !3, line: 5, type: !8, isLocal: false, isDefinition: true)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIGlobalVariableExpression(var: !10)
!10 = distinct !DIGlobalVariable(name: "z", scope: !2, file: !3, line: 5, type: !8, isLocal: false, isDefinition: true)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{!"clang version 6.0.0 (http://llvm.org/git/clang.git f9faef8fd4d18005bc4eade77e012bf7f4e001ff) (http://llvm.org/git/llvm.git 1103886c3ddb28e4660d21f4ddaeb6f0a690ae7d)"}
!15 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 7, type: !16, isLocal: false, isDefinition: true, scopeLine: 8, isOptimized: false, unit: !2, variables: !4)
!16 = !DISubroutineType(types: !17)
!17 = !{!8}
!18 = !DILocalVariable(name: "array", scope: !15, file: !3, line: 12, type: !19)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 576, elements: !22)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "iptr", file: !3, line: 3, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!22 = !{!23, !23}
!23 = !DISubrange(count: 3)
!24 = !DIExpression()
!25 = !DILocation(line: 12, column: 8, scope: !15)
!26 = !DILocation(line: 25, column: 3, scope: !15)
!27 = !DILocation(line: 25, column: 18, scope: !15)
!28 = !DILocation(line: 26, column: 3, scope: !15)
!29 = !DILocation(line: 26, column: 18, scope: !15)
!30 = !DILocation(line: 27, column: 3, scope: !15)
!31 = !DILocation(line: 27, column: 18, scope: !15)
!32 = !DILocalVariable(name: "a", scope: !15, file: !3, line: 30, type: !33)
!33 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!34 = !DILocation(line: 30, column: 16, scope: !15)
!35 = !DILocalVariable(name: "b", scope: !15, file: !3, line: 30, type: !33)
!36 = !DILocation(line: 30, column: 19, scope: !15)
!37 = !DILocation(line: 31, column: 7, scope: !15)
!38 = !DILocation(line: 31, column: 5, scope: !15)
!39 = !DILocation(line: 32, column: 7, scope: !15)
!40 = !DILocation(line: 32, column: 5, scope: !15)
!41 = !DILocation(line: 34, column: 11, scope: !15)
!42 = !DILocation(line: 34, column: 13, scope: !15)
!43 = !DILocation(line: 34, column: 17, scope: !15)
!44 = !DILocation(line: 34, column: 20, scope: !15)
!45 = !DILocation(line: 34, column: 22, scope: !15)
!46 = !DILocation(line: 34, column: 3, scope: !15)
!47 = !DILocation(line: 36, column: 9, scope: !15)
!48 = !DILocation(line: 36, column: 3, scope: !15)
!49 = !DILocation(line: 36, column: 12, scope: !15)
!50 = !DILocation(line: 36, column: 15, scope: !15)
!51 = !DILocalVariable(name: "p", scope: !15, file: !3, line: 38, type: !20)
!52 = !DILocation(line: 38, column: 8, scope: !15)
!53 = !DILocation(line: 39, column: 11, scope: !15)
!54 = !DILocation(line: 39, column: 5, scope: !15)
!55 = !DILocation(line: 39, column: 14, scope: !15)
!56 = !DILocation(line: 39, column: 4, scope: !15)
!57 = !DILocation(line: 41, column: 4, scope: !15)
!58 = !DILocation(line: 41, column: 5, scope: !15)
!59 = !DILocation(line: 43, column: 10, scope: !15)
!60 = !DILocation(line: 43, column: 11, scope: !15)
!61 = !DILocation(line: 43, column: 3, scope: !15)
!62 = !DILocation(line: 44, column: 1, scope: !15)
