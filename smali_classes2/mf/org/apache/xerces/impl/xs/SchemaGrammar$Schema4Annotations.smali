.class public final Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;
.super Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
.source "SchemaGrammar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Schema4Annotations"
.end annotation


# static fields
.field public static final INSTANCE:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->INSTANCE:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;

    return-void
.end method

.method private constructor <init>()V
    .locals 32

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;-><init>()V

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fTargetNamespace:Ljava/lang/String;

    new-instance v1, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    const/4 v2, 0x3

    iput-short v2, v1, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setNamespace(Ljava/lang/String;)V

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v4, 0x6

    invoke-direct {v1, v4}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fGlobalAttrDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fGlobalAttrGrpDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v4}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fGlobalGroupDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fGlobalNotationDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fGlobalIDConstraintDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fGlobalTypeDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v4}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->createAnnotationElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v1

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    invoke-direct {v0, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->createAnnotationElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_APPINFO:Ljava/lang/String;

    invoke-direct {v0, v5}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->createAnnotationElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v5

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    iget-object v7, v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-virtual {v6, v7, v1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    iget-object v7, v4, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-virtual {v6, v7, v4}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    iget-object v7, v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v4, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v6, v1, v1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v6, v4, v4}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v6, v5, v5}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-direct {v6}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;-><init>()V

    new-instance v15, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-direct {v15}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;-><init>()V

    new-instance v14, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-direct {v14}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;-><init>()V

    iput-object v6, v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v15, v4, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v14, v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    new-instance v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;-><init>()V

    new-instance v13, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-direct {v13}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;-><init>()V

    new-instance v12, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-direct {v12}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;-><init>()V

    new-instance v11, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    invoke-direct {v11}, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;-><init>()V

    new-instance v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-direct {v7}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;-><init>()V

    iput-object v7, v11, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v7, v11, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    const-string v10, "ID"

    invoke-virtual {v9, v10}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v3, v11

    move/from16 v11, v16

    move-object/from16 v29, v12

    move/from16 v12, v17

    move-object/from16 v30, v13

    move-object/from16 v13, v18

    move-object/from16 v31, v14

    move-object v14, v6

    move-object/from16 v26, v15

    move-object/from16 v15, v19

    invoke-virtual/range {v7 .. v15}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;SSLmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)V

    const/4 v15, 0x0

    iput-short v15, v3, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    iput-short v15, v3, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    new-instance v14, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    invoke-direct {v14}, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;-><init>()V

    new-instance v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-direct {v7}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;-><init>()V

    iput-object v7, v14, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v7, v14, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SOURCE:Ljava/lang/String;

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    const-string v10, "anyURI"

    invoke-virtual {v9, v10}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object v2, v14

    move-object/from16 v14, v26

    move-object/from16 v28, v6

    move v6, v15

    move-object/from16 v15, v16

    invoke-virtual/range {v7 .. v15}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;SSLmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)V

    iput-short v6, v2, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    iput-short v6, v2, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    new-instance v15, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    invoke-direct {v15}, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;-><init>()V

    new-instance v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-direct {v7}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;-><init>()V

    iput-object v7, v15, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v7, v15, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    const-string v8, "lang"

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    const-string v11, "language"

    invoke-virtual {v10, v11}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v11, 0x0

    move-object v6, v15

    move-object/from16 v15, v16

    invoke-virtual/range {v7 .. v15}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;SSLmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)V

    const/4 v7, 0x0

    iput-short v7, v6, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    iput-short v7, v6, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    new-instance v7, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    invoke-direct {v7}, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;-><init>()V

    new-instance v8, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-direct {v8}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;-><init>()V

    iput-object v8, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v8, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    sget-object v17, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SOURCE:Ljava/lang/String;

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    const-string v10, "anyURI"

    invoke-virtual {v9, v10}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v19, v9

    check-cast v19, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/16 v20, 0x0

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v24, 0x0

    move-object/from16 v16, v8

    move-object/from16 v23, v31

    invoke-virtual/range {v16 .. v24}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;SSLmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)V

    const/4 v8, 0x0

    iput-short v8, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    iput-short v8, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    new-instance v9, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-direct {v9}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;-><init>()V

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/String;

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fTargetNamespace:Ljava/lang/String;

    aput-object v12, v11, v8

    iput-object v11, v9, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iput-short v10, v9, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v8, 0x3

    iput-short v8, v9, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    iput-object v9, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-object/from16 v3, v30

    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    invoke-virtual {v3, v6}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    iput-object v9, v3, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-object/from16 v2, v29

    invoke-virtual {v2, v7}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    iput-object v9, v2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-direct/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->createUnboundedModelGroupParticle()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v6

    new-instance v7, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-direct {v7}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;-><init>()V

    const/16 v8, 0x65

    iput-short v8, v7, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    iput v10, v7, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    new-array v8, v10, [Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iput-object v8, v7, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v8, v7, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v0, v5}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->createChoiceElementParticle(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v5

    const/4 v9, 0x0

    aput-object v5, v8, v9

    iget-object v5, v7, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v0, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->createChoiceElementParticle(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v4

    const/4 v8, 0x1

    aput-object v4, v5, v8

    iput-object v7, v6, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    invoke-direct/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->createUnboundedAnyWildcardSequenceParticle()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v27

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "#AnonType_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fTargetNamespace:Ljava/lang/String;

    sget-object v10, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    new-instance v4, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v7, v28

    move-object/from16 v16, v1

    move-object/from16 v18, v6

    move-object/from16 v19, v4

    invoke-virtual/range {v7 .. v19}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;SSSSZLmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "#AnonType_"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v4, v28

    invoke-virtual {v4, v1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setName(Ljava/lang/String;)V

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setIsAnonymous()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "#AnonType_"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fTargetNamespace:Ljava/lang/String;

    sget-object v10, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    new-instance v1, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    const/4 v4, 0x0

    invoke-direct {v1, v5, v4}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    const/4 v14, 0x3

    move-object/from16 v7, v26

    move-object/from16 v16, v3

    move-object/from16 v18, v27

    move-object/from16 v19, v1

    invoke-virtual/range {v7 .. v19}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;SSSSZLmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "#AnonType_"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v26

    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setName(Ljava/lang/String;)V

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setIsAnonymous()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "#AnonType_"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_APPINFO:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fTargetNamespace:Ljava/lang/String;

    sget-object v19, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    new-instance v3, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    const/4 v4, 0x0

    invoke-direct {v3, v5, v4}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    const/16 v20, 0x2

    const/16 v21, 0x0

    const/16 v22, 0x3

    const/16 v23, 0x3

    const/16 v24, 0x0

    const/16 v26, 0x0

    move-object/from16 v16, v31

    move-object/from16 v18, v1

    move-object/from16 v25, v2

    move-object/from16 v28, v3

    invoke-virtual/range {v16 .. v28}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;SSSSZLmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#AnonType_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_APPINFO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v31

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setName(Ljava/lang/String;)V

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setIsAnonymous()V

    return-void
.end method

.method private createAnnotationElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;-><init>()V

    iput-object p1, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fTargetNamespace:Ljava/lang/String;

    iput-object p1, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->setIsGlobal()V

    const/4 p1, 0x7

    iput-short p1, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->setConstraintType(S)V

    return-object v0
.end method

.method private createAnyLaxWildcardParticle()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 4

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    iput v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    const/4 v2, 0x2

    iput-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    new-instance v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iput-short v1, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v1, 0x3

    iput-short v1, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    return-object v0
.end method

.method private createChoiceElementParticle(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    iput v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    iput-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iput-object p1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    return-object v0
.end method

.method private createUnboundedAnyWildcardSequenceParticle()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 5

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->createUnboundedModelGroupParticle()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    new-instance v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;-><init>()V

    const/16 v2, 0x66

    iput-short v2, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/4 v2, 0x1

    iput v2, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    new-array v2, v2, [Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iput-object v2, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v2, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->createAnyLaxWildcardParticle()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    return-object v0
.end method

.method private createUnboundedModelGroupParticle()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    const/4 v1, -0x1

    iput v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    const/4 v1, 0x3

    iput-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    return-object v0
.end method


# virtual methods
.method public addComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized addDocument(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;)V
    .locals 0

    return-void
.end method

.method public addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V
    .locals 0

    return-void
.end method

.method public addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addGlobalComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)V
    .locals 0

    return-void
.end method

.method public addGlobalComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 0

    return-void
.end method

.method public addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addGlobalElementDeclAll(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 0

    return-void
.end method

.method public addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;)V
    .locals 0

    return-void
.end method

.method public addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;)V
    .locals 0

    return-void
.end method

.method public addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addGlobalSimpleTypeDecl(Lmf/org/apache/xerces/impl/dv/XSSimpleType;)V
    .locals 0

    return-void
.end method

.method public addGlobalSimpleTypeDecl(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V
    .locals 0

    return-void
.end method

.method public addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addRedefinedGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)V
    .locals 0

    return-void
.end method

.method declared-synchronized getDOMParser()Lmf/org/apache/xerces/parsers/DOMParser;
    .locals 1

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGrammarDescription()Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->makeClone()Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getSAXParser()Lmf/org/apache/xerces/parsers/SAXParser;
    .locals 1

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public setImportedGrammars(Ljava/util/Vector;)V
    .locals 0

    return-void
.end method
