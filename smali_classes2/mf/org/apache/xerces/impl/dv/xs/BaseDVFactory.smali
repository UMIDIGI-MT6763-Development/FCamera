.class public Lmf/org/apache/xerces/impl/dv/xs/BaseDVFactory;
.super Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;
.source "BaseDVFactory.java"


# static fields
.field static final URI_SCHEMAFORSCHEMA:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema"

.field static fBaseTypes:Lmf/org/apache/xerces/util/SymbolHash;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    const/16 v1, 0x35

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/BaseDVFactory;->fBaseTypes:Lmf/org/apache/xerces/util/SymbolHash;

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/BaseDVFactory;->fBaseTypes:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/xs/BaseDVFactory;->createBuiltInTypes(Lmf/org/apache/xerces/util/SymbolHash;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;-><init>()V

    return-void
.end method

.method static createBuiltInTypes(Lmf/org/apache/xerces/util/SymbolHash;)V
    .locals 25

    move-object/from16 v0, p0

    new-instance v1, Lmf/org/apache/xerces/impl/dv/XSFacets;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/dv/XSFacets;-><init>()V

    sget-object v12, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v2, "anySimpleType"

    invoke-virtual {v0, v2, v12}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v13, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v4, "string"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x2

    move-object v2, v13

    move-object v3, v12

    invoke-direct/range {v2 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v2, "string"

    invoke-virtual {v0, v2, v13}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v13, "boolean"

    new-instance v14, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v4, "boolean"

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v11, 0x3

    move-object v2, v14

    invoke-direct/range {v2 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v0, v13, v14}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v13, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v4, "decimal"

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x4

    move-object v2, v13

    invoke-direct/range {v2 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v2, "decimal"

    invoke-virtual {v0, v2, v13}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v14, "anyURI"

    new-instance v15, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v4, "anyURI"

    const/16 v5, 0x11

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/16 v11, 0x12

    move-object v2, v15

    invoke-direct/range {v2 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v0, v14, v15}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v14, "base64Binary"

    new-instance v15, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v4, "base64Binary"

    const/16 v5, 0x10

    const/16 v11, 0x11

    move-object v2, v15

    invoke-direct/range {v2 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v0, v14, v15}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v14, "dateTime"

    new-instance v15, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v4, "dateTime"

    const/4 v5, 0x7

    const/4 v6, 0x1

    const/16 v11, 0x8

    move-object v2, v15

    invoke-direct/range {v2 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v0, v14, v15}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v14, "time"

    new-instance v15, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v4, "time"

    const/16 v5, 0x8

    const/16 v11, 0x9

    move-object v2, v15

    invoke-direct/range {v2 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v0, v14, v15}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v14, "date"

    new-instance v15, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v4, "date"

    const/16 v5, 0x9

    const/16 v11, 0xa

    move-object v2, v15

    invoke-direct/range {v2 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v0, v14, v15}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v14, "gYearMonth"

    new-instance v15, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v4, "gYearMonth"

    const/16 v5, 0xa

    const/16 v11, 0xb

    move-object v2, v15

    invoke-direct/range {v2 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v0, v14, v15}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v14, "gYear"

    new-instance v15, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v4, "gYear"

    const/16 v5, 0xb

    const/16 v11, 0xc

    move-object v2, v15

    invoke-direct/range {v2 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v0, v14, v15}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v14, "gMonthDay"

    new-instance v15, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v4, "gMonthDay"

    const/16 v5, 0xc

    const/16 v11, 0xd

    move-object v2, v15

    invoke-direct/range {v2 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v0, v14, v15}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v14, "gDay"

    new-instance v15, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v4, "gDay"

    const/16 v5, 0xd

    const/16 v11, 0xe

    move-object v2, v15

    invoke-direct/range {v2 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v0, v14, v15}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v14, "gMonth"

    new-instance v15, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v4, "gMonth"

    const/16 v5, 0xe

    const/16 v11, 0xf

    move-object v2, v15

    invoke-direct/range {v2 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v0, v14, v15}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v17, "integer"

    const/16 v18, 0x18

    const/16 v19, 0x2

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x1e

    move-object v15, v2

    move-object/from16 v16, v13

    invoke-direct/range {v15 .. v24}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v3, "integer"

    invoke-virtual {v0, v3, v2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "0"

    iput-object v3, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    new-instance v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v18, "nonPositiveInteger"

    const-string v19, "http://www.w3.org/2001/XMLSchema"

    const/16 v22, 0x0

    const/16 v23, 0x1f

    move-object/from16 v16, v5

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v23}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    const/16 v3, 0x20

    const/4 v12, 0x0

    invoke-virtual {v5, v1, v3, v12}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v4, "nonPositiveInteger"

    invoke-virtual {v0, v4, v5}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "-1"

    iput-object v4, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    new-instance v13, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v6, "negativeInteger"

    const-string v7, "http://www.w3.org/2001/XMLSchema"

    const/4 v10, 0x0

    const/16 v11, 0x20

    move-object v4, v13

    invoke-direct/range {v4 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    invoke-virtual {v13, v1, v3, v12}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v4, "negativeInteger"

    invoke-virtual {v0, v4, v13}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "9223372036854775807"

    iput-object v4, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    const-string v4, "-9223372036854775808"

    iput-object v4, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    new-instance v14, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v18, "long"

    const-string v19, "http://www.w3.org/2001/XMLSchema"

    const/16 v23, 0x21

    move-object/from16 v16, v14

    invoke-direct/range {v16 .. v23}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    const/16 v4, 0x120

    invoke-virtual {v14, v1, v4, v12}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v5, "long"

    invoke-virtual {v0, v5, v14}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v5, "2147483647"

    iput-object v5, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    const-string v5, "-2147483648"

    iput-object v5, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    new-instance v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v15, "int"

    const-string v16, "http://www.w3.org/2001/XMLSchema"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x22

    move-object v13, v5

    invoke-direct/range {v13 .. v20}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    invoke-virtual {v5, v1, v4, v12}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v6, "int"

    invoke-virtual {v0, v6, v5}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v6, "32767"

    iput-object v6, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    const-string v6, "-32768"

    iput-object v6, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    new-instance v14, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v17, "short"

    const-string v18, "http://www.w3.org/2001/XMLSchema"

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x23

    move-object v15, v14

    move-object/from16 v16, v5

    invoke-direct/range {v15 .. v22}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    invoke-virtual {v14, v1, v4, v12}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v5, "short"

    invoke-virtual {v0, v5, v14}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v5, "127"

    iput-object v5, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    const-string v5, "-128"

    iput-object v5, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    new-instance v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v15, "byte"

    const-string v16, "http://www.w3.org/2001/XMLSchema"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x24

    move-object v13, v5

    invoke-direct/range {v13 .. v20}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    invoke-virtual {v5, v1, v4, v12}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v4, "byte"

    invoke-virtual {v0, v4, v5}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "0"

    iput-object v4, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    new-instance v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v18, "nonNegativeInteger"

    const-string v19, "http://www.w3.org/2001/XMLSchema"

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x25

    move-object/from16 v16, v4

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v23}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    const/16 v2, 0x100

    invoke-virtual {v4, v1, v2, v12}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v5, "nonNegativeInteger"

    invoke-virtual {v0, v5, v4}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v5, "18446744073709551615"

    iput-object v5, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    new-instance v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v15, "unsignedLong"

    const-string v16, "http://www.w3.org/2001/XMLSchema"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x26

    move-object v13, v5

    move-object v14, v4

    invoke-direct/range {v13 .. v20}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    invoke-virtual {v5, v1, v3, v12}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v6, "unsignedLong"

    invoke-virtual {v0, v6, v5}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v6, "4294967295"

    iput-object v6, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    new-instance v6, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v15, "unsignedInt"

    const-string v16, "http://www.w3.org/2001/XMLSchema"

    const/16 v20, 0x27

    move-object v13, v6

    move-object v14, v5

    invoke-direct/range {v13 .. v20}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    invoke-virtual {v6, v1, v3, v12}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v5, "unsignedInt"

    invoke-virtual {v0, v5, v6}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v5, "65535"

    iput-object v5, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    new-instance v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v15, "unsignedShort"

    const-string v16, "http://www.w3.org/2001/XMLSchema"

    const/16 v20, 0x28

    move-object v13, v5

    move-object v14, v6

    invoke-direct/range {v13 .. v20}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    invoke-virtual {v5, v1, v3, v12}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v6, "unsignedShort"

    invoke-virtual {v0, v6, v5}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v6, "255"

    iput-object v6, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    new-instance v6, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v15, "unsignedByte"

    const-string v16, "http://www.w3.org/2001/XMLSchema"

    const/16 v20, 0x29

    move-object v13, v6

    move-object v14, v5

    invoke-direct/range {v13 .. v20}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    invoke-virtual {v6, v1, v3, v12}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v3, "unsignedByte"

    invoke-virtual {v0, v3, v6}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "1"

    iput-object v3, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    new-instance v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v15, "positiveInteger"

    const-string v16, "http://www.w3.org/2001/XMLSchema"

    const/16 v20, 0x2a

    move-object v13, v3

    move-object v14, v4

    invoke-direct/range {v13 .. v20}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    invoke-virtual {v3, v1, v2, v12}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v1, "positiveInteger"

    invoke-virtual {v0, v1, v3}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createTypeList(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 8

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

    new-instance p4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object v1, p4

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Ljava/lang/String;Ljava/lang/String;S[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)V

    return-object p4
.end method

.method public getBuiltInType(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/BaseDVFactory;->fBaseTypes:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    return-object p1
.end method

.method public getBuiltInTypes()Lmf/org/apache/xerces/util/SymbolHash;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/BaseDVFactory;->fBaseTypes:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v0

    return-object v0
.end method
