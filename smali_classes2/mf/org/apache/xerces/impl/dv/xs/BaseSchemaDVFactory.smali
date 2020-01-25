.class public abstract Lmf/org/apache/xerces/impl/dv/xs/BaseSchemaDVFactory;
.super Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;
.source "BaseSchemaDVFactory.java"


# static fields
.field static final URI_SCHEMAFORSCHEMA:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema"


# instance fields
.field protected fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/BaseSchemaDVFactory;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    return-void
.end method

.method protected static createBuiltInTypes(Lmf/org/apache/xerces/util/SymbolHash;Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)V
    .locals 33

    move-object/from16 v0, p0

    new-instance v1, Lmf/org/apache/xerces/impl/dv/XSFacets;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/dv/XSFacets;-><init>()V

    const-string v2, "anySimpleType"

    sget-object v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v6, "string"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x2

    move-object v4, v2

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v3, "string"

    invoke-virtual {v0, v3, v2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "boolean"

    new-instance v14, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v6, "boolean"

    const/4 v7, 0x2

    const/4 v10, 0x1

    const/4 v13, 0x3

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v0, v3, v14}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v17, "decimal"

    const/16 v18, 0x3

    const/16 v19, 0x2

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x4

    move-object v15, v3

    move-object/from16 v16, p1

    invoke-direct/range {v15 .. v24}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v4, "decimal"

    invoke-virtual {v0, v4, v3}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "anyURI"

    new-instance v15, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v7, "anyURI"

    const/16 v8, 0x11

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v14, 0x12

    move-object v5, v15

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v14}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v0, v4, v15}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "base64Binary"

    new-instance v15, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v7, "base64Binary"

    const/16 v8, 0x10

    const/16 v14, 0x11

    move-object v5, v15

    invoke-direct/range {v5 .. v14}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v0, v4, v15}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v18, "duration"

    const/16 v19, 0x6

    const/16 v20, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x7

    move-object/from16 v16, v4

    move-object/from16 v17, p1

    invoke-direct/range {v16 .. v25}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v5, "duration"

    invoke-virtual {v0, v5, v4}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "dateTime"

    new-instance v15, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v7, "dateTime"

    const/4 v8, 0x7

    const/4 v9, 0x1

    const/16 v14, 0x8

    move-object v5, v15

    invoke-direct/range {v5 .. v14}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v0, v4, v15}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "time"

    new-instance v15, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v7, "time"

    const/16 v8, 0x8

    const/16 v14, 0x9

    move-object v5, v15

    invoke-direct/range {v5 .. v14}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v0, v4, v15}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "date"

    new-instance v15, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v7, "date"

    const/16 v8, 0x9

    const/16 v14, 0xa

    move-object v5, v15

    invoke-direct/range {v5 .. v14}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v0, v4, v15}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "gYearMonth"

    new-instance v15, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v7, "gYearMonth"

    const/16 v8, 0xa

    const/16 v14, 0xb

    move-object v5, v15

    invoke-direct/range {v5 .. v14}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v0, v4, v15}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "gYear"

    new-instance v15, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v7, "gYear"

    const/16 v8, 0xb

    const/16 v14, 0xc

    move-object v5, v15

    invoke-direct/range {v5 .. v14}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v0, v4, v15}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "gMonthDay"

    new-instance v15, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v7, "gMonthDay"

    const/16 v8, 0xc

    const/16 v14, 0xd

    move-object v5, v15

    invoke-direct/range {v5 .. v14}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v0, v4, v15}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "gDay"

    new-instance v15, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v7, "gDay"

    const/16 v8, 0xd

    const/16 v14, 0xe

    move-object v5, v15

    invoke-direct/range {v5 .. v14}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v0, v4, v15}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "gMonth"

    new-instance v15, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v7, "gMonth"

    const/16 v8, 0xe

    const/16 v14, 0xf

    move-object v5, v15

    invoke-direct/range {v5 .. v14}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v0, v4, v15}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v17, "integer"

    const/16 v18, 0x18

    const/16 v19, 0x2

    const/16 v20, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x1e

    move-object v15, v4

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v24}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v3, "integer"

    invoke-virtual {v0, v3, v4}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "0"

    iput-object v3, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    new-instance v6, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v18, "nonPositiveInteger"

    const-string v19, "http://www.w3.org/2001/XMLSchema"

    const/16 v22, 0x0

    const/16 v23, 0x1f

    move-object/from16 v16, v6

    move-object/from16 v17, v4

    invoke-direct/range {v16 .. v23}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    const/16 v3, 0x20

    const/4 v13, 0x0

    invoke-virtual {v6, v1, v3, v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v5, "nonPositiveInteger"

    invoke-virtual {v0, v5, v6}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v5, "-1"

    iput-object v5, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    new-instance v14, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v7, "negativeInteger"

    const-string v8, "http://www.w3.org/2001/XMLSchema"

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x20

    move-object v5, v14

    invoke-direct/range {v5 .. v12}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    invoke-virtual {v14, v1, v3, v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v5, "negativeInteger"

    invoke-virtual {v0, v5, v14}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v5, "9223372036854775807"

    iput-object v5, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    const-string v5, "-9223372036854775808"

    iput-object v5, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    new-instance v15, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v18, "long"

    const-string v19, "http://www.w3.org/2001/XMLSchema"

    const/16 v23, 0x21

    move-object/from16 v16, v15

    invoke-direct/range {v16 .. v23}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    const/16 v5, 0x120

    invoke-virtual {v15, v1, v5, v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v6, "long"

    invoke-virtual {v0, v6, v15}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v6, "2147483647"

    iput-object v6, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    const-string v6, "-2147483648"

    iput-object v6, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    new-instance v6, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v16, "int"

    const-string v17, "http://www.w3.org/2001/XMLSchema"

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x22

    move-object v14, v6

    invoke-direct/range {v14 .. v21}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    invoke-virtual {v6, v1, v5, v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v7, "int"

    invoke-virtual {v0, v7, v6}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v7, "32767"

    iput-object v7, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    const-string v7, "-32768"

    iput-object v7, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    new-instance v15, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v18, "short"

    const-string v19, "http://www.w3.org/2001/XMLSchema"

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x23

    move-object/from16 v16, v15

    move-object/from16 v17, v6

    invoke-direct/range {v16 .. v23}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    invoke-virtual {v15, v1, v5, v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v6, "short"

    invoke-virtual {v0, v6, v15}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v6, "127"

    iput-object v6, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    const-string v6, "-128"

    iput-object v6, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    new-instance v6, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v16, "byte"

    const-string v17, "http://www.w3.org/2001/XMLSchema"

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x24

    move-object v14, v6

    invoke-direct/range {v14 .. v21}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    invoke-virtual {v6, v1, v5, v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v5, "byte"

    invoke-virtual {v0, v5, v6}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v5, "0"

    iput-object v5, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    new-instance v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v18, "nonNegativeInteger"

    const-string v19, "http://www.w3.org/2001/XMLSchema"

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x25

    move-object/from16 v16, v5

    move-object/from16 v17, v4

    invoke-direct/range {v16 .. v23}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    const/16 v4, 0x100

    invoke-virtual {v5, v1, v4, v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v6, "nonNegativeInteger"

    invoke-virtual {v0, v6, v5}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v6, "18446744073709551615"

    iput-object v6, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    new-instance v6, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v16, "unsignedLong"

    const-string v17, "http://www.w3.org/2001/XMLSchema"

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x26

    move-object v14, v6

    move-object v15, v5

    invoke-direct/range {v14 .. v21}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    invoke-virtual {v6, v1, v3, v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v7, "unsignedLong"

    invoke-virtual {v0, v7, v6}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v7, "4294967295"

    iput-object v7, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    new-instance v7, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v16, "unsignedInt"

    const-string v17, "http://www.w3.org/2001/XMLSchema"

    const/16 v21, 0x27

    move-object v14, v7

    move-object v15, v6

    invoke-direct/range {v14 .. v21}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    invoke-virtual {v7, v1, v3, v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v6, "unsignedInt"

    invoke-virtual {v0, v6, v7}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v6, "65535"

    iput-object v6, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    new-instance v6, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v16, "unsignedShort"

    const-string v17, "http://www.w3.org/2001/XMLSchema"

    const/16 v21, 0x28

    move-object v14, v6

    move-object v15, v7

    invoke-direct/range {v14 .. v21}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    invoke-virtual {v6, v1, v3, v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v7, "unsignedShort"

    invoke-virtual {v0, v7, v6}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v7, "255"

    iput-object v7, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    new-instance v7, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v16, "unsignedByte"

    const-string v17, "http://www.w3.org/2001/XMLSchema"

    const/16 v21, 0x29

    move-object v14, v7

    move-object v15, v6

    invoke-direct/range {v14 .. v21}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    invoke-virtual {v7, v1, v3, v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v3, "unsignedByte"

    invoke-virtual {v0, v3, v7}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "1"

    iput-object v3, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    new-instance v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v16, "positiveInteger"

    const-string v17, "http://www.w3.org/2001/XMLSchema"

    const/16 v21, 0x2a

    move-object v14, v3

    move-object v15, v5

    invoke-direct/range {v14 .. v21}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    invoke-virtual {v3, v1, v4, v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v4, "positiveInteger"

    invoke-virtual {v0, v4, v3}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "float"

    new-instance v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v16, "float"

    const/16 v17, 0x4

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x5

    move-object v14, v4

    move-object/from16 v15, p1

    invoke-direct/range {v14 .. v23}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v0, v3, v4}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "double"

    new-instance v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v16, "double"

    const/16 v17, 0x5

    const/16 v23, 0x6

    move-object v14, v4

    invoke-direct/range {v14 .. v23}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v0, v3, v4}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "hexBinary"

    new-instance v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v16, "hexBinary"

    const/16 v17, 0xf

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x10

    move-object v14, v4

    invoke-direct/range {v14 .. v23}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v0, v3, v4}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "NOTATION"

    new-instance v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v16, "NOTATION"

    const/16 v17, 0x14

    const/16 v23, 0x14

    move-object v14, v4

    invoke-direct/range {v14 .. v23}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v0, v3, v4}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    iput-short v3, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpace:S

    new-instance v12, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v6, "normalizedString"

    const-string v7, "http://www.w3.org/2001/XMLSchema"

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x15

    move-object v4, v12

    move-object v5, v2

    invoke-direct/range {v4 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    const/16 v2, 0x10

    invoke-virtual {v12, v1, v2, v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v4, "normalizedString"

    invoke-virtual {v0, v4, v12}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v14, 0x2

    iput-short v14, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpace:S

    new-instance v15, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v6, "token"

    const-string v7, "http://www.w3.org/2001/XMLSchema"

    const/16 v11, 0x16

    move-object v4, v15

    move-object v5, v12

    invoke-direct/range {v4 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    invoke-virtual {v15, v1, v2, v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v4, "token"

    invoke-virtual {v0, v4, v15}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-short v14, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpace:S

    const-string v4, "([a-zA-Z]{1,8})(-[a-zA-Z0-9]{1,8})*"

    iput-object v4, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->pattern:Ljava/lang/String;

    new-instance v12, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v6, "language"

    const-string v7, "http://www.w3.org/2001/XMLSchema"

    const/16 v11, 0x17

    move-object v4, v12

    move-object v5, v15

    invoke-direct/range {v4 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    const/16 v4, 0x18

    invoke-virtual {v12, v1, v4, v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v4, "language"

    invoke-virtual {v0, v4, v12}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-short v14, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpace:S

    new-instance v12, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v6, "Name"

    const-string v7, "http://www.w3.org/2001/XMLSchema"

    const/16 v11, 0x19

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    invoke-virtual {v12, v1, v2, v13, v14}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SSS)V

    const-string v4, "Name"

    invoke-virtual {v0, v4, v12}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-short v14, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpace:S

    new-instance v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v18, "NCName"

    const-string v19, "http://www.w3.org/2001/XMLSchema"

    const/16 v22, 0x0

    const/16 v23, 0x1a

    move-object/from16 v16, v4

    move-object/from16 v17, v12

    invoke-direct/range {v16 .. v23}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    const/4 v5, 0x3

    invoke-virtual {v4, v1, v2, v13, v5}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SSS)V

    const-string v5, "NCName"

    invoke-virtual {v0, v5, v4}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v5, "QName"

    new-instance v6, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v18, "QName"

    const/16 v19, 0x12

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x13

    move-object/from16 v16, v6

    move-object/from16 v17, p1

    invoke-direct/range {v16 .. v25}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v0, v5, v6}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v5, "ID"

    new-instance v6, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v18, "ID"

    const/16 v19, 0x15

    const/16 v25, 0x1b

    move-object/from16 v16, v6

    move-object/from16 v17, v4

    invoke-direct/range {v16 .. v25}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v0, v5, v6}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v18, "IDREF"

    const/16 v19, 0x16

    const/16 v25, 0x1c

    move-object/from16 v16, v5

    invoke-direct/range {v16 .. v25}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v6, "IDREF"

    invoke-virtual {v0, v6, v5}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iput v3, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minLength:I

    new-instance v17, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v28, "http://www.w3.org/2001/XMLSchema"

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x1

    const/16 v32, 0x0

    move-object/from16 v26, v17

    move-object/from16 v30, v5

    invoke-direct/range {v26 .. v32}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;ZLmf/org/apache/xerces/xs/XSObjectList;)V

    new-instance v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v18, "IDREFS"

    const-string v19, "http://www.w3.org/2001/XMLSchema"

    const/16 v22, 0x0

    move-object/from16 v16, v5

    invoke-direct/range {v16 .. v22}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;)V

    invoke-virtual {v5, v1, v14, v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v6, "IDREFS"

    invoke-virtual {v0, v6, v5}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v18, "ENTITY"

    const/16 v19, 0x17

    const/16 v22, 0x0

    const/16 v25, 0x1d

    move-object/from16 v16, v5

    move-object/from16 v17, v4

    invoke-direct/range {v16 .. v25}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v4, "ENTITY"

    invoke-virtual {v0, v4, v5}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iput v3, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minLength:I

    new-instance v7, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v18, "http://www.w3.org/2001/XMLSchema"

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v16, v7

    move-object/from16 v20, v5

    invoke-direct/range {v16 .. v22}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;ZLmf/org/apache/xerces/xs/XSObjectList;)V

    new-instance v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v8, "ENTITIES"

    const-string v9, "http://www.w3.org/2001/XMLSchema"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v12}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;)V

    invoke-virtual {v4, v1, v14, v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v5, "ENTITIES"

    invoke-virtual {v0, v5, v4}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-short v14, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpace:S

    new-instance v12, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v6, "NMTOKEN"

    const-string v7, "http://www.w3.org/2001/XMLSchema"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x18

    move-object v4, v12

    move-object v5, v15

    invoke-direct/range {v4 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    invoke-virtual {v12, v1, v2, v13, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SSS)V

    const-string v2, "NMTOKEN"

    invoke-virtual {v0, v2, v12}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iput v3, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minLength:I

    new-instance v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v8, "http://www.w3.org/2001/XMLSchema"

    const/4 v7, 0x0

    const/4 v11, 0x1

    const/4 v2, 0x0

    move-object v6, v5

    move-object v10, v12

    move-object v12, v2

    invoke-direct/range {v6 .. v12}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;ZLmf/org/apache/xerces/xs/XSObjectList;)V

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v6, "NMTOKENS"

    const-string v7, "http://www.w3.org/2001/XMLSchema"

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;)V

    invoke-virtual {v2, v1, v14, v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v1, "NMTOKENS"

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createTypeList(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 8

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/BaseSchemaDVFactory;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->getSimpleTypeDecl()Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-result-object v1

    move-object v5, p4

    check-cast v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setListValues(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v7, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object v4, p4

    check-cast v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;ZLmf/org/apache/xerces/xs/XSObjectList;)V

    return-object v7
.end method

.method public createTypeRestriction(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 8

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/BaseSchemaDVFactory;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->getSimpleTypeDecl()Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-result-object v1

    move-object v2, p4

    check-cast v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setRestrictionValues(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v7, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object v1, p4

    check-cast v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;)V

    return-object v7
.end method

.method public createTypeUnion(Ljava/lang/String;Ljava/lang/String;S[Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 7

    array-length v0, p4

    new-array v5, v0, [Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v1, 0x0

    invoke-static {p4, v1, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p4, p0, Lmf/org/apache/xerces/impl/dv/xs/BaseSchemaDVFactory;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->getSimpleTypeDecl()Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setUnionValues(Ljava/lang/String;Ljava/lang/String;S[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object v1, p4

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Ljava/lang/String;Ljava/lang/String;S[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)V

    return-object p4
.end method

.method public newXSSimpleTypeDecl()Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>()V

    return-object v0
.end method

.method public setDeclPool(Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/BaseSchemaDVFactory;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    return-void
.end method
