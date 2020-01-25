.class public Lmf/org/apache/xerces/impl/dv/xs/FullDVFactory;
.super Lmf/org/apache/xerces/impl/dv/xs/BaseDVFactory;
.source "FullDVFactory.java"


# static fields
.field static final URI_SCHEMAFORSCHEMA:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema"

.field static fFullTypes:Lmf/org/apache/xerces/util/SymbolHash;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    const/16 v1, 0x59

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/FullDVFactory;->fFullTypes:Lmf/org/apache/xerces/util/SymbolHash;

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/FullDVFactory;->fFullTypes:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/xs/FullDVFactory;->createBuiltInTypes(Lmf/org/apache/xerces/util/SymbolHash;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/BaseDVFactory;-><init>()V

    return-void
.end method

.method static createBuiltInTypes(Lmf/org/apache/xerces/util/SymbolHash;)V
    .locals 33

    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Lmf/org/apache/xerces/impl/dv/xs/BaseDVFactory;->createBuiltInTypes(Lmf/org/apache/xerces/util/SymbolHash;)V

    new-instance v1, Lmf/org/apache/xerces/impl/dv/XSFacets;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/dv/XSFacets;-><init>()V

    sget-object v12, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v2, "string"

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v14, "float"

    new-instance v15, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v4, "float"

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x5

    move-object v2, v15

    move-object v3, v12

    invoke-direct/range {v2 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v0, v14, v15}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v14, "double"

    new-instance v15, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v4, "double"

    const/4 v5, 0x5

    const/4 v11, 0x6

    move-object v2, v15

    invoke-direct/range {v2 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v0, v14, v15}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v14, "duration"

    new-instance v15, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v4, "duration"

    const/4 v5, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x7

    move-object v2, v15

    invoke-direct/range {v2 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v0, v14, v15}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v14, "hexBinary"

    new-instance v15, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v4, "hexBinary"

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/16 v11, 0x10

    move-object v2, v15

    invoke-direct/range {v2 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v0, v14, v15}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v14, "QName"

    new-instance v15, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v4, "QName"

    const/16 v5, 0x12

    const/16 v11, 0x13

    move-object v2, v15

    invoke-direct/range {v2 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v0, v14, v15}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v14, "NOTATION"

    new-instance v15, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v4, "NOTATION"

    const/16 v5, 0x14

    const/16 v11, 0x14

    move-object v2, v15

    invoke-direct/range {v2 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v0, v14, v15}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-short v2, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpace:S

    new-instance v11, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v5, "normalizedString"

    const-string v6, "http://www.w3.org/2001/XMLSchema"

    const/4 v9, 0x0

    const/16 v10, 0x15

    move-object v3, v11

    move-object v4, v13

    invoke-direct/range {v3 .. v10}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    const/16 v12, 0x10

    const/4 v13, 0x0

    invoke-virtual {v11, v1, v12, v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v3, "normalizedString"

    invoke-virtual {v0, v3, v11}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v14, 0x2

    iput-short v14, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpace:S

    new-instance v15, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v5, "token"

    const-string v6, "http://www.w3.org/2001/XMLSchema"

    const/16 v10, 0x16

    move-object v3, v15

    move-object v4, v11

    invoke-direct/range {v3 .. v10}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    invoke-virtual {v15, v1, v12, v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v3, "token"

    invoke-virtual {v0, v3, v15}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-short v14, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpace:S

    const-string v3, "([a-zA-Z]{1,8})(-[a-zA-Z0-9]{1,8})*"

    iput-object v3, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->pattern:Ljava/lang/String;

    new-instance v11, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v5, "language"

    const-string v6, "http://www.w3.org/2001/XMLSchema"

    const/16 v10, 0x17

    move-object v3, v11

    move-object v4, v15

    invoke-direct/range {v3 .. v10}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    const/16 v3, 0x18

    invoke-virtual {v11, v1, v3, v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v3, "language"

    invoke-virtual {v0, v3, v11}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-short v14, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpace:S

    new-instance v11, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v5, "Name"

    const-string v6, "http://www.w3.org/2001/XMLSchema"

    const/16 v10, 0x19

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    invoke-virtual {v11, v1, v12, v13, v14}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SSS)V

    const-string v3, "Name"

    invoke-virtual {v0, v3, v11}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-short v14, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpace:S

    new-instance v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v18, "NCName"

    const-string v19, "http://www.w3.org/2001/XMLSchema"

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1a

    move-object/from16 v16, v3

    move-object/from16 v17, v11

    invoke-direct/range {v16 .. v23}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    const/4 v4, 0x3

    invoke-virtual {v3, v1, v12, v13, v4}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SSS)V

    const-string v4, "NCName"

    invoke-virtual {v0, v4, v3}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "ID"

    new-instance v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v18, "ID"

    const/16 v19, 0x15

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x1b

    move-object/from16 v16, v5

    move-object/from16 v17, v3

    invoke-direct/range {v16 .. v25}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v0, v4, v5}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v18, "IDREF"

    const/16 v19, 0x16

    const/16 v25, 0x1c

    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v25}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v5, "IDREF"

    invoke-virtual {v0, v5, v4}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iput v2, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minLength:I

    new-instance v17, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v28, "http://www.w3.org/2001/XMLSchema"

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x1

    const/16 v32, 0x0

    move-object/from16 v26, v17

    move-object/from16 v30, v4

    invoke-direct/range {v26 .. v32}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;ZLmf/org/apache/xerces/xs/XSObjectList;)V

    new-instance v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v18, "IDREFS"

    const-string v19, "http://www.w3.org/2001/XMLSchema"

    const/16 v22, 0x0

    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v22}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;)V

    invoke-virtual {v4, v1, v14, v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v5, "IDREFS"

    invoke-virtual {v0, v5, v4}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v18, "ENTITY"

    const/16 v19, 0x17

    const/16 v22, 0x0

    const/16 v25, 0x1d

    move-object/from16 v16, v4

    move-object/from16 v17, v3

    invoke-direct/range {v16 .. v25}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v3, "ENTITY"

    invoke-virtual {v0, v3, v4}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iput v2, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minLength:I

    new-instance v6, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v18, "http://www.w3.org/2001/XMLSchema"

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v16, v6

    move-object/from16 v20, v4

    invoke-direct/range {v16 .. v22}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;ZLmf/org/apache/xerces/xs/XSObjectList;)V

    new-instance v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v7, "ENTITIES"

    const-string v8, "http://www.w3.org/2001/XMLSchema"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;)V

    invoke-virtual {v3, v1, v14, v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v4, "ENTITIES"

    invoke-virtual {v0, v4, v3}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-short v14, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpace:S

    new-instance v11, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v5, "NMTOKEN"

    const-string v6, "http://www.w3.org/2001/XMLSchema"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x18

    move-object v3, v11

    move-object v4, v15

    invoke-direct/range {v3 .. v10}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    invoke-virtual {v11, v1, v12, v13, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SSS)V

    const-string v3, "NMTOKEN"

    invoke-virtual {v0, v3, v11}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iput v2, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minLength:I

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v7, "http://www.w3.org/2001/XMLSchema"

    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v3, 0x0

    move-object v5, v2

    move-object v9, v11

    move-object v11, v3

    invoke-direct/range {v5 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;ZLmf/org/apache/xerces/xs/XSObjectList;)V

    new-instance v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v6, "NMTOKENS"

    const-string v7, "http://www.w3.org/2001/XMLSchema"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;)V

    invoke-virtual {v3, v1, v14, v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v1, "NMTOKENS"

    invoke-virtual {v0, v1, v3}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBuiltInType(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/FullDVFactory;->fFullTypes:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    return-object p1
.end method

.method public getBuiltInTypes()Lmf/org/apache/xerces/util/SymbolHash;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/FullDVFactory;->fFullTypes:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v0

    return-object v0
.end method
