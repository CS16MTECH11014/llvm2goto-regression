; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, i32, i32 }
%struct.BF = type { i32, i8 }

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 !dbg !17 {
entry:
  %retval = alloca i32, align 4
  %s = alloca %struct.S, align 4
  %ptr = alloca %struct.BF*, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata %struct.S* %s, metadata !20, metadata !26), !dbg !27
  %i = getelementptr inbounds %struct.S, %struct.S* %s, i32 0, i32 0, !dbg !28
  store i32 0, i32* %i, align 4, !dbg !29
  %j = getelementptr inbounds %struct.S, %struct.S* %s, i32 0, i32 1, !dbg !30
  store i32 0, i32* %j, align 4, !dbg !31
  %l = getelementptr inbounds %struct.S, %struct.S* %s, i32 0, i32 2, !dbg !32
  store i32 0, i32* %l, align 4, !dbg !33
  call void @llvm.dbg.declare(metadata %struct.BF** %ptr, metadata !34, metadata !26), !dbg !35
  %0 = bitcast %struct.S* %s to i8*, !dbg !36
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !37
  %1 = bitcast i8* %add.ptr to %struct.BF*, !dbg !38
  store %struct.BF* %1, %struct.BF** %ptr, align 8, !dbg !35
  %2 = load %struct.BF*, %struct.BF** %ptr, align 8, !dbg !39
  %i1 = getelementptr inbounds %struct.BF, %struct.BF* %2, i32 0, i32 0, !dbg !40
  %3 = load i32, i32* %i1, align 4, !dbg !40
  %cmp = icmp eq i32 %3, 0, !dbg !41
  %conv = zext i1 %cmp to i32, !dbg !41
  %call = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 %conv), !dbg !42
  ret i32 0, !dbg !43
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @assert(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 6.0.0 (http://llvm.org/git/clang.git f9faef8fd4d18005bc4eade77e012bf7f4e001ff) (http://llvm.org/git/llvm.git 1103886c3ddb28e4660d21f4ddaeb6f0a690ae7d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "main.c", directory: "/home/eti/Desktop/llvm2goto-git/Pointer_byte_extract7")
!2 = !{}
!3 = !{!4, !11}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "BF", file: !1, line: 8, size: 64, elements: !6)
!6 = !{!7, !9}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !5, file: !1, line: 10, baseType: !8, size: 32)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !5, file: !1, line: 11, baseType: !10, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{!"clang version 6.0.0 (http://llvm.org/git/clang.git f9faef8fd4d18005bc4eade77e012bf7f4e001ff) (http://llvm.org/git/llvm.git 1103886c3ddb28e4660d21f4ddaeb6f0a690ae7d)"}
!17 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 14, type: !18, isLocal: false, isDefinition: true, scopeLine: 15, isOptimized: false, unit: !0, variables: !2)
!18 = !DISubroutineType(types: !19)
!19 = !{!8}
!20 = !DILocalVariable(name: "s", scope: !17, file: !1, line: 16, type: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "S", file: !1, line: 1, size: 96, elements: !22)
!22 = !{!23, !24, !25}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !21, file: !1, line: 3, baseType: !8, size: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "j", scope: !21, file: !1, line: 4, baseType: !8, size: 32, offset: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !21, file: !1, line: 5, baseType: !8, size: 32, offset: 64)
!26 = !DIExpression()
!27 = !DILocation(line: 16, column: 12, scope: !17)
!28 = !DILocation(line: 17, column: 5, scope: !17)
!29 = !DILocation(line: 17, column: 6, scope: !17)
!30 = !DILocation(line: 18, column: 5, scope: !17)
!31 = !DILocation(line: 18, column: 6, scope: !17)
!32 = !DILocation(line: 19, column: 5, scope: !17)
!33 = !DILocation(line: 19, column: 6, scope: !17)
!34 = !DILocalVariable(name: "ptr", scope: !17, file: !1, line: 21, type: !4)
!35 = !DILocation(line: 21, column: 14, scope: !17)
!36 = !DILocation(line: 21, column: 31, scope: !17)
!37 = !DILocation(line: 21, column: 40, scope: !17)
!38 = !DILocation(line: 21, column: 18, scope: !17)
!39 = !DILocation(line: 23, column: 10, scope: !17)
!40 = !DILocation(line: 23, column: 15, scope: !17)
!41 = !DILocation(line: 23, column: 16, scope: !17)
!42 = !DILocation(line: 23, column: 3, scope: !17)
!43 = !DILocation(line: 25, column: 3, scope: !17)
