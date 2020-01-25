.class public Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
.super Ljava/lang/Object;
.source "SchemaGrammar.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/grammars/XSGrammar;
.implements Lmf/org/apache/xerces/xs/XSNamespaceItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinAttrDecl;,
        Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;,
        Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;,
        Lmf/org/apache/xerces/impl/xs/SchemaGrammar$XSAnyType;
    }
.end annotation


# static fields
.field private static final BASICSET_COUNT:I = 0x1d

.field private static final FULLSET_COUNT:I = 0x2e

.field private static final GLOBAL_COMP:[Z

.field private static final GRAMMAR_XS:I = 0x1

.field private static final GRAMMAR_XSI:I = 0x2

.field private static final INC_SIZE:I = 0x10

.field private static final INITIAL_SIZE:I = 0x10

.field private static final MAX_COMP_IDX:S = 0x10s

.field private static final REDEFINED_GROUP_INIT_SIZE:I = 0x2

.field public static final SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

.field private static final SG_SchemaNSExtended:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

.field public static final SG_XSI:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

.field public static final fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

.field public static final fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;


# instance fields
.field fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

.field private fCTCount:I

.field private fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

.field private fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

.field private fComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

.field private fComponentsExt:[Lmf/org/apache/xerces/xs/datatypes/ObjectList;

.field private fDOMParser:Ljava/lang/ref/SoftReference;

.field private fDocuments:Ljava/util/Vector;

.field fFullChecked:Z

.field fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalAttrDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalAttrGrpDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalGroupDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalIDConstraintDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalNotationDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalTypeDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

.field fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

.field fImported:Ljava/util/Vector;

.field private fIsImmutable:Z

.field private fLocations:Ljava/util/Vector;

.field fNumAnnotations:I

.field private fRGCount:I

.field private fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

.field private fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

.field private fSAXParser:Ljava/lang/ref/SoftReference;

.field private fSubGroupCount:I

.field private fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field fTargetNamespace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$XSAnyType;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$XSAnyType;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;-><init>(IS)V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;-><init>(IS)V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNSExtended:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    const-string v3, "anySimpleType"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    sput-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    invoke-direct {v0, v2, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;-><init>(IS)V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_XSI:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    const/16 v0, 0x11

    new-array v0, v0, [Z

    aput-boolean v1, v0, v1

    aput-boolean v1, v0, v2

    const/4 v2, 0x3

    aput-boolean v1, v0, v2

    const/4 v2, 0x5

    aput-boolean v1, v0, v2

    const/4 v2, 0x6

    aput-boolean v1, v0, v2

    const/16 v2, 0xa

    aput-boolean v1, v0, v2

    const/16 v2, 0xb

    aput-boolean v1, v0, v2

    const/16 v2, 0xf

    aput-boolean v1, v0, v2

    const/16 v2, 0x10

    aput-boolean v1, v0, v2

    sput-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->GLOBAL_COMP:[Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSAXParser:Ljava/lang/ref/SoftReference;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDOMParser:Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fIsImmutable:Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fImported:Ljava/util/Vector;

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    const/16 v2, 0x10

    new-array v3, v2, [Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    new-array v3, v2, [Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    const/4 v3, 0x2

    new-array v3, v3, [Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    const/4 v3, 0x1

    new-array v3, v3, [Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fFullChecked:Z

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroupCount:I

    new-array v1, v2, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponentsExt:[Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDocuments:Ljava/util/Vector;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fLocations:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/XSDDescription;Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSAXParser:Ljava/lang/ref/SoftReference;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDOMParser:Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fIsImmutable:Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fImported:Ljava/util/Vector;

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    const/16 v2, 0x10

    new-array v3, v2, [Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    new-array v3, v2, [Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    const/4 v3, 0x2

    new-array v3, v3, [Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    const/4 v3, 0x1

    new-array v3, v3, [Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fFullChecked:Z

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroupCount:I

    new-array v1, v2, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponentsExt:[Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDocuments:Ljava/util/Vector;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fLocations:Ljava/util/Vector;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    new-instance p1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {p1}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance p1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {p1}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance p1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {p1}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance p1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {p1}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance p1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {p1}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance p1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {p1}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance p1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {p1}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance p1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {p1}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance p1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {p1}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance p1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {p1}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance p1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {p1}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance p1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {p1}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance p1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {p1}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance p1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {p1}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    sget-object p2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne p1, p2, :cond_0

    sget-object p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {p1}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_0

    :cond_0
    new-instance p1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {p1}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSAXParser:Ljava/lang/ref/SoftReference;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDOMParser:Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fIsImmutable:Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fImported:Ljava/util/Vector;

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    const/16 v2, 0x10

    new-array v3, v2, [Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    new-array v3, v2, [Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    const/4 v3, 0x2

    new-array v3, v3, [Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    const/4 v3, 0x1

    new-array v3, v3, [Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fFullChecked:Z

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroupCount:I

    new-array v2, v2, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponentsExt:[Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDocuments:Ljava/util/Vector;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fLocations:Ljava/util/Vector;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->makeClone()Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    iget v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I

    if-lez v2, :cond_0

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    array-length v3, v3

    new-array v3, v3, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    invoke-static {v3, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroupCount:I

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroupCount:I

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroupCount:I

    if-lez v2, :cond_1

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    array-length v3, v3

    new-array v3, v3, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-static {v3, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    if-lez v2, :cond_2

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    array-length v3, v3

    new-array v3, v3, [Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    array-length v3, v3

    new-array v3, v3, [Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-static {v3, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    if-lez v2, :cond_3

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    array-length v3, v3

    new-array v3, v3, [Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    array-length v3, v3

    new-array v3, v3, [Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    invoke-static {v3, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fImported:Ljava/util/Vector;

    if-eqz v2, :cond_5

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fImported:Ljava/util/Vector;

    move v2, v1

    :goto_0
    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fImported:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_4

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fImported:Ljava/util/Vector;

    iget-object v4, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fImported:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fLocations:Ljava/util/Vector;

    if-eqz v2, :cond_7

    :goto_2
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fLocations:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_6

    goto :goto_3

    :cond_6
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fLocations:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addDocument(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    return-void
.end method

.method public static getS4SGrammar(S)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    return-object p0

    :cond_0
    sget-object p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNSExtended:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    return-object p0
.end method

.method static final resize([Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;I)[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .locals 2

    new-array v0, p1, [Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method static final resize([Lmf/org/apache/xerces/impl/xs/XSElementDecl;I)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 2

    new-array v0, p1, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method static final resize([Lmf/org/apache/xerces/impl/xs/XSGroupDecl;I)[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    .locals 2

    new-array v0, p1, [Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method static final resize([Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;I)[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;
    .locals 2

    new-array v0, p1, [Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    goto :goto_0

    :cond_1
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I

    array-length v2, v0

    if-ne v1, v2, :cond_2

    shl-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    :cond_2
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I

    aput-object p1, v0, v1

    return-void
.end method

.method public addComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)V
    .locals 3

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x10

    invoke-static {v1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;I)[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    add-int/lit8 v1, v1, 0x10

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;I)[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    aput-object p2, v0, v1

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    aput-object p1, p2, v1

    return-void
.end method

.method public declared-synchronized addDocument(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDocuments:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDocuments:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fLocations:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDocuments:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fLocations:Ljava/util/Vector;

    invoke-virtual {p1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    return-void
.end method

.method public addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    :cond_1
    return-void
.end method

.method public addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    return-void
.end method

.method public addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    :cond_1
    return-void
.end method

.method public addGlobalComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    return-void
.end method

.method public addGlobalComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    :cond_1
    return-void
.end method

.method public addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    return-void
.end method

.method public addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    :cond_1
    return-void
.end method

.method public addGlobalElementDeclAll(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fSubGroup:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v0, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroupCount:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x10

    invoke-static {v1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/XSElementDecl;I)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroupCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroupCount:I

    aput-object p1, v0, v1

    :cond_1
    return-void
.end method

.method public addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    return-void
.end method

.method public addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    :cond_1
    return-void
.end method

.method public addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->fName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    return-void
.end method

.method public addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->fName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    :cond_1
    return-void
.end method

.method public addGlobalSimpleTypeDecl(Lmf/org/apache/xerces/impl/dv/XSSimpleType;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    instance-of v0, p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v0, :cond_0

    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    :cond_0
    return-void
.end method

.method public addGlobalSimpleTypeDecl(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;

    move-result-object p2

    if-nez p2, :cond_1

    instance-of p2, p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz p2, :cond_1

    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    :cond_1
    return-void
.end method

.method public addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    instance-of v0, p1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eqz v0, :cond_0

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v0, :cond_1

    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;

    move-result-object p2

    if-nez p2, :cond_2

    instance-of p2, p1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eqz p2, :cond_1

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    goto :goto_1

    :cond_1
    instance-of p2, p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz p2, :cond_2

    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final addIDConstraintDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    .locals 1

    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->addIDConstraint(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final addIDConstraintDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v0, Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, ","

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public addRedefinedGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)V
    .locals 3

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/XSGroupDecl;I)[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;I)[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    div-int/lit8 v2, v1, 0x2

    aput-object p3, v0, v2

    iget-object p3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    aput-object p1, p3, v1

    iget p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    aput-object p2, p3, p1

    return-void
.end method

.method public getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 3

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I

    if-nez v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    return-object v0

    :cond_0
    new-instance v1, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    invoke-direct {v1, v2, v0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    return-object v1
.end method

.method public getAttributeDeclaration(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeDeclaration;
    .locals 0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeGroup(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeGroupDefinition;
    .locals 0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;
    .locals 4

    monitor-enter p0

    if-lez p1, :cond_5

    const/16 v0, 0x10

    if-gt p1, v0, :cond_5

    :try_start_0
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->GLOBAL_COMP:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    if-nez v1, :cond_1

    const/16 v1, 0x11

    new-array v1, v1, [Lmf/org/apache/xerces/xs/XSNamedMap;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    aget-object v1, v1, p1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_0

    :pswitch_7
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    :goto_0
    const/16 v2, 0xf

    if-eq p1, v2, :cond_3

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    new-instance v2, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolHash;)V

    aput-object v2, v0, p1

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    new-instance v2, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    invoke-direct {v2, v3, v1, p1}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolHash;S)V

    aput-object v2, v0, p1

    :cond_4
    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    aget-object p1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_5
    :goto_3
    :try_start_1
    sget-object p1, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->EMPTY_MAP:Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public declared-synchronized getComponentsExt(S)Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    .locals 4

    monitor-enter p0

    if-lez p1, :cond_3

    const/16 v0, 0x10

    if-gt p1, v0, :cond_3

    :try_start_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->GLOBAL_COMP:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponentsExt:[Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    if-nez v0, :cond_1

    const/16 v0, 0x11

    new-array v0, v0, [Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponentsExt:[Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponentsExt:[Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    :goto_0
    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->getEntries()[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponentsExt:[Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    new-instance v2, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;

    array-length v3, v0

    invoke-direct {v2, v0, v3}, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;-><init>([Ljava/lang/Object;I)V

    aput-object v2, v1, p1

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponentsExt:[Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    aget-object p1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_3
    :goto_1
    :try_start_1
    sget-object p1, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method declared-synchronized getDOMParser()Lmf/org/apache/xerces/parsers/DOMParser;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDOMParser:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDOMParser:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/parsers/DOMParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lmf/org/apache/xerces/parsers/XML11Configuration;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/parsers/XML11Configuration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;)V

    const-string v1, "http://xml.org/sax/features/namespaces"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "http://xml.org/sax/features/validation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setFeature(Ljava/lang/String;Z)V

    new-instance v1, Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/parsers/DOMParser;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, "http://apache.org/xml/features/dom/defer-node-expansion"

    invoke-virtual {v1, v0, v2}, Lmf/org/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :try_start_3
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDOMParser:Ljava/lang/ref/SoftReference;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDocumentLocations()Lmf/org/apache/xerces/xs/StringList;
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fLocations:Ljava/util/Vector;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;-><init>(Ljava/util/Vector;)V

    return-object v0
.end method

.method public getElementDeclaration(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSElementDeclaration;
    .locals 0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object p1

    return-object p1
.end method

.method public final getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    return-object p1
.end method

.method public final getGlobalAttributeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    return-object p1
.end method

.method public final getGlobalAttributeGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    return-object p1
.end method

.method public final getGlobalAttributeGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    return-object p1
.end method

.method public final getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    return-object p1
.end method

.method public final getGlobalElementDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    return-object p1
.end method

.method public final getGlobalGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    return-object p1
.end method

.method public final getGlobalGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    return-object p1
.end method

.method public final getGlobalNotationDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    return-object p1
.end method

.method public final getGlobalNotationDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    return-object p1
.end method

.method public final getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    return-object p1
.end method

.method public final getGlobalTypeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    return-object p1
.end method

.method public getGrammarDescription()Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    return-object v0
.end method

.method public getIDCDefinition(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSIDCDefinition;
    .locals 0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getIDConstraintDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object p1

    return-object p1
.end method

.method public final getIDConstraintDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    return-object p1
.end method

.method public final getIDConstraintDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    return-object p1
.end method

.method public getImportedGrammars()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fImported:Ljava/util/Vector;

    return-object v0
.end method

.method public getModelGroupDefinition(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSModelGroupDefinition;
    .locals 0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object p1

    return-object p1
.end method

.method public getNotationDeclaration(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSNotationDeclaration;
    .locals 0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object p1

    return-object p1
.end method

.method final getRGLocators()[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;
    .locals 3

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-static {v1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/XSGroupDecl;I)[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;I)[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    return-object v0
.end method

.method final getRedefinedGroupDecls()[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    .locals 3

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-static {v1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/XSGroupDecl;I)[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;I)[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    return-object v0
.end method

.method declared-synchronized getSAXParser()Lmf/org/apache/xerces/parsers/SAXParser;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSAXParser:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSAXParser:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/parsers/SAXParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lmf/org/apache/xerces/parsers/XML11Configuration;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/parsers/XML11Configuration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;)V

    const-string v1, "http://xml.org/sax/features/namespaces"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "http://xml.org/sax/features/validation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setFeature(Ljava/lang/String;Z)V

    new-instance v1, Lmf/org/apache/xerces/parsers/SAXParser;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/parsers/SAXParser;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSAXParser:Ljava/lang/ref/SoftReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSchemaNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    return-object v0
.end method

.method final getSubstitutionGroups()[Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 3

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroupCount:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-static {v1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/XSElementDecl;I)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    return-object v0
.end method

.method public final getTargetNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeDefinition(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .locals 0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p1

    return-object p1
.end method

.method final getUncheckedCTLocators()[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-static {v1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;I)[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;I)[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    return-object v0
.end method

.method final getUncheckedComplexTypeDecls()[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .locals 3

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-static {v1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;I)[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;I)[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    return-object v0
.end method

.method public final hasIDConstraints()Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isImmutable()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fIsImmutable:Z

    return v0
.end method

.method public isNamespaceAware()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized removeDocument(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDocuments:Ljava/util/Vector;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDocuments:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDocuments:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fLocations:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElementAt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized resetComponents()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponentsExt:[Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setImmutable(Z)V
    .locals 0

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fIsImmutable:Z

    return-void
.end method

.method public setImportedGrammars(Ljava/util/Vector;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fImported:Ljava/util/Vector;

    return-void
.end method

.method final setUncheckedTypeNum(I)V
    .locals 1

    iput p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    invoke-static {p1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;I)[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    invoke-static {p1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;I)[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    return-void
.end method

.method public toXSModel()Lmf/org/apache/xerces/xs/XSModel;
    .locals 3

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;

    const/4 v1, 0x1

    new-array v1, v1, [Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;-><init>([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    return-object v0
.end method

.method public toXSModel([Lmf/org/apache/xerces/xni/grammars/XSGrammar;)Lmf/org/apache/xerces/xs/XSModel;
    .locals 5

    if-eqz p1, :cond_6

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    aget-object v3, p1, v2

    if-ne v3, p0, :cond_5

    const/4 v2, 0x1

    move v3, v2

    :goto_1
    if-eqz v3, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v0, 0x1

    :goto_2
    new-array v4, v2, [Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    :goto_3
    if-lt v1, v0, :cond_4

    if-nez v3, :cond_3

    aput-object p0, v4, v0

    :cond_3
    new-instance p1, Lmf/org/apache/xerces/impl/xs/XSModelImpl;

    invoke-direct {p1, v4}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;-><init>([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    return-object p1

    :cond_4
    aget-object v2, p1, v1

    check-cast v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aput-object v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->toXSModel()Lmf/org/apache/xerces/xs/XSModel;

    move-result-object p1

    return-object p1
.end method
