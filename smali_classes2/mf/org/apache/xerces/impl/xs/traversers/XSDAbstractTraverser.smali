.class abstract Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;
.super Ljava/lang/Object;
.source "XSDAbstractTraverser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;
    }
.end annotation


# static fields
.field protected static final CHILD_OF_GROUP:I = 0x4

.field protected static final GROUP_REF_WITH_ALL:I = 0x2

.field protected static final NOT_ALL_CONTEXT:I = 0x0

.field protected static final NO_NAME:Ljava/lang/String; = "(no name)"

.field protected static final PROCESSING_ALL_EL:I = 0x1

.field protected static final PROCESSING_ALL_GP:I = 0x8

.field private static final fQNameDV:Lmf/org/apache/xerces/impl/dv/XSSimpleType;


# instance fields
.field protected fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

.field private fPattern:Ljava/lang/StringBuffer;

.field protected fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field protected fValidateAnnotations:Z

.field fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

.field private final xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    const-string v1, "QName"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fQNameDV:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    return-void
.end method

.method constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fValidateAnnotations:Z

    new-instance v0, Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/validation/ValidationState;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fPattern:Ljava/lang/StringBuffer;

    new-instance v0, Lmf/org/apache/xerces/impl/dv/XSFacets;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/XSFacets;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    return-void
.end method

.method private containsQName(Lmf/org/apache/xerces/impl/dv/XSSimpleType;)Z
    .locals 4

    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getPrimitiveKind()S

    move-result p1

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getItemType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->containsQName(Lmf/org/apache/xerces/impl/dv/XSSimpleType;)Z

    move-result p1

    return p1

    :cond_2
    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object p1

    move v0, v1

    :goto_0
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v3

    if-lt v0, v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->containsQName(Lmf/org/apache/xerces/impl/dv/XSSimpleType;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v1
.end method

.method private static escapeAttValue(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    if-lt p1, v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    const-string v2, "&quot;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const/16 v3, 0x3c

    if-ne v2, v3, :cond_2

    const-string v2, "&lt;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const/16 v3, 0x26

    if-ne v2, v3, :cond_3

    const-string v2, "&amp;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const/16 v3, 0x9

    if-ne v2, v3, :cond_4

    const-string v2, "&#x9;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    const/16 v3, 0xa

    if-ne v2, v3, :cond_5

    const-string v2, "&#xA;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    const/16 v3, 0xd

    if-ne v2, v3, :cond_6

    const-string v2, "&#xD;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private static processAttValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_2

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_2

    const/16 v3, 0x26

    if-eq v2, v3, :cond_2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->escapeAttValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method checkNotationType(Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/w3c/dom/Element;)V
    .locals 4

    invoke-interface {p2}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    move-object v0, p2

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getPrimitiveKind()S

    move-result v1

    const/16 v3, 0x14

    if-ne v1, v3, :cond_0

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getDefinedFacets()S

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_0

    const-string v0, "enumeration-required-notation"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v3

    aput-object p1, v1, v2

    const/4 p1, 0x2

    invoke-static {p3}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-virtual {p0, v0, v1, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_0
    return-void
.end method

.method protected checkOccurrences(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Ljava/lang/String;Lmf/org/w3c/dom/Element;IJ)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    iget v3, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    iget v4, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    sget v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    const/4 v6, 0x1

    shl-int v5, v6, v5

    int-to-long v7, v5

    and-long v7, p5, v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    sget v8, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    shl-int v8, v6, v8

    int-to-long v11, v8

    and-long v11, p5, v11

    cmp-long v8, v11, v9

    if-eqz v8, :cond_1

    move v8, v6

    goto :goto_1

    :cond_1
    move v8, v7

    :goto_1
    and-int/lit8 v9, p4, 0x1

    if-eqz v9, :cond_2

    move v9, v6

    goto :goto_2

    :cond_2
    move v9, v7

    :goto_2
    and-int/lit8 v10, p4, 0x8

    if-eqz v10, :cond_3

    move v10, v6

    goto :goto_3

    :cond_3
    move v10, v7

    :goto_3
    and-int/lit8 v11, p4, 0x2

    if-eqz v11, :cond_4

    move v11, v6

    goto :goto_4

    :cond_4
    move v11, v7

    :goto_4
    and-int/lit8 v12, p4, 0x4

    if-eqz v12, :cond_5

    move v12, v6

    goto :goto_5

    :cond_5
    move v12, v7

    :goto_5
    const/4 v13, 0x2

    if-eqz v12, :cond_7

    if-nez v5, :cond_6

    new-array v3, v13, [Ljava/lang/Object;

    aput-object p2, v3, v7

    const-string v5, "minOccurs"

    aput-object v5, v3, v6

    const-string v5, "s4s-att-not-allowed"

    invoke-virtual {p0, v5, v3, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move v3, v6

    :cond_6
    if-nez v8, :cond_7

    new-array v4, v13, [Ljava/lang/Object;

    aput-object p2, v4, v7

    const-string v5, "maxOccurs"

    aput-object v5, v4, v6

    const-string v5, "s4s-att-not-allowed"

    invoke-virtual {p0, v5, v4, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move v4, v6

    :cond_7
    const/4 v5, 0x0

    if-nez v3, :cond_8

    if-nez v4, :cond_8

    iput-short v7, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    return-object v5

    :cond_8
    if-eqz v9, :cond_a

    if-eq v4, v6, :cond_c

    const-string v5, "cos-all-limited.2"

    new-array v8, v13, [Ljava/lang/Object;

    const/4 v9, -0x1

    if-ne v4, v9, :cond_9

    const-string v4, "unbounded"

    goto :goto_6

    :cond_9
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    :goto_6
    aput-object v4, v8, v7

    iget-object v4, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v4, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v6

    invoke-virtual {p0, v5, v8, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    if-le v3, v6, :cond_d

    move v3, v6

    goto :goto_7

    :cond_a
    if-nez v10, :cond_b

    if-eqz v11, :cond_c

    :cond_b
    if-eq v4, v6, :cond_c

    const-string v4, "cos-all-limited.1.2"

    invoke-virtual {p0, v4, v5, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    if-le v3, v6, :cond_d

    move v3, v6

    goto :goto_7

    :cond_c
    move v6, v4

    :cond_d
    :goto_7
    iput v3, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    iput v6, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    return-object v1
.end method

.method reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    return-void
.end method

.method reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V
    .locals 1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iput-boolean p2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fValidateAnnotations:Z

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setExtraChecking(Z)V

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setSymbolTable(Lmf/org/apache/xerces/util/SymbolTable;)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {p1, p3}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;
    .locals 10

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, p1, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object p3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_APPINFO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "src-annotation"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    invoke-virtual {p0, v3, v4, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v2, v0, v4, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v3, v2, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    :goto_0
    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    if-nez p3, :cond_3

    return-object v0

    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v3, p4, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v2

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    aget-object p2, p2, v3

    check-cast p2, Ljava/util/Vector;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v4, v1

    :goto_1
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v5

    const/4 v6, -0x1

    if-lt v4, v5, :cond_6

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {p2, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_4

    return-object v0

    :cond_4
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v4, v0

    invoke-virtual {p3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    iget-boolean p3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fValidateAnnotations:Z

    if-eqz p3, :cond_5

    new-instance p3, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;

    invoke-direct {p3, p2, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;-><init>(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    invoke-virtual {p4, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->addAnnotation(Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;)V

    :cond_5
    new-instance p1, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    invoke-direct {p1, p2, v2}, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    return-object p1

    :cond_6
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v7, 0x3a

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ne v7, v6, :cond_7

    const-string v6, ""

    move-object v7, v4

    goto :goto_2

    :cond_7
    invoke-virtual {v4, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :goto_2
    iget-object v8, p4, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v9, v6}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6, v7}, Lmf/org/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_8

    add-int/lit8 v4, v5, 0x1

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {p2, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->processAttValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "\" "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_9
    iget-boolean p2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fValidateAnnotations:Z

    if-eqz p2, :cond_a

    new-instance p2, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;

    invoke-direct {p2, p3, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;-><init>(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    invoke-virtual {p4, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->addAnnotation(Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;)V

    :cond_a
    new-instance p1, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    invoke-direct {p1, p3, v2}, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    return-object p1
.end method

.method traverseAttrsAndAttrGrps(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)Lmf/org/w3c/dom/Element;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p1

    :goto_0
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_0

    goto/16 :goto_e

    :cond_0
    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eqz v9, :cond_8

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v8, v8, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;

    invoke-virtual {v8, v5, v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    move-result-object v8

    if-nez v8, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-short v9, v8, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    if-ne v9, v11, :cond_2

    invoke-virtual {v1, v8}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    goto/16 :goto_8

    :cond_2
    iget-object v9, v8, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getNamespace()Ljava/lang/String;

    move-result-object v9

    iget-object v12, v8, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v9, v12}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUseNoProhibited(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeUse;

    move-result-object v9

    if-nez v9, :cond_5

    invoke-virtual {v1, v8}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d

    if-nez v4, :cond_3

    const-string v12, "ag-props-correct.3"

    goto :goto_1

    :cond_3
    const-string v12, "ct-props-correct.5"

    :goto_1
    if-nez v4, :cond_4

    iget-object v13, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    goto :goto_2

    :cond_4
    invoke-virtual/range {p5 .. p5}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v13

    :goto_2
    new-array v10, v10, [Ljava/lang/Object;

    aput-object v13, v10, v7

    iget-object v7, v8, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v6

    aput-object v9, v10, v11

    invoke-virtual {v0, v12, v10, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_8

    :cond_5
    if-eq v9, v8, :cond_d

    if-nez v4, :cond_6

    const-string v9, "ag-props-correct.2"

    goto :goto_3

    :cond_6
    const-string v9, "ct-props-correct.4"

    :goto_3
    if-nez v4, :cond_7

    iget-object v10, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    goto :goto_4

    :cond_7
    invoke-virtual/range {p5 .. p5}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v10

    :goto_4
    new-array v11, v11, [Ljava/lang/Object;

    aput-object v10, v11, v7

    iget-object v7, v8, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v11, v6

    invoke-virtual {v0, v9, v11, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_8

    :cond_8
    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v8, v8, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;

    invoke-virtual {v8, v5, v2, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v8

    if-nez v8, :cond_9

    goto :goto_8

    :cond_9
    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUses()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v9

    invoke-interface {v9}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v12

    move v13, v7

    :goto_5
    if-lt v13, v12, :cond_e

    iget-object v9, v8, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    if-eqz v9, :cond_d

    iget-object v9, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    if-nez v9, :cond_a

    iget-object v6, v8, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iput-object v6, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    goto :goto_8

    :cond_a
    iget-object v9, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v8, v8, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v10, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-short v10, v10, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    invoke-virtual {v9, v8, v10}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->performIntersectionWith(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;S)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-result-object v8

    iput-object v8, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v8, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    if-nez v8, :cond_d

    if-nez v4, :cond_b

    const-string v8, "src-attribute_group.2"

    goto :goto_6

    :cond_b
    const-string v8, "src-ct.4"

    :goto_6
    if-nez v4, :cond_c

    iget-object v9, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    goto :goto_7

    :cond_c
    invoke-virtual/range {p5 .. p5}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v9

    :goto_7
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v9, v6, v7

    invoke-virtual {v0, v8, v6, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_d
    :goto_8
    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v5

    goto/16 :goto_0

    :cond_e
    invoke-interface {v9, v13}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v14

    check-cast v14, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    iget-short v15, v14, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    if-ne v15, v11, :cond_f

    invoke-virtual {v1, v14}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    move-object/from16 v16, v8

    goto/16 :goto_d

    :cond_f
    iget-object v15, v14, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v15}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getNamespace()Ljava/lang/String;

    move-result-object v15

    iget-object v11, v14, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v15, v11}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUseNoProhibited(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeUse;

    move-result-object v11

    if-nez v11, :cond_13

    invoke-virtual {v1, v14}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_12

    if-nez v4, :cond_10

    const-string v15, "ag-props-correct.3"

    goto :goto_9

    :cond_10
    const-string v15, "ct-props-correct.5"

    :goto_9
    if-nez v4, :cond_11

    iget-object v6, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    goto :goto_a

    :cond_11
    invoke-virtual/range {p5 .. p5}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v6

    :goto_a
    move-object/from16 v16, v8

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v6, v8, v7

    iget-object v6, v14, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v14, 0x1

    aput-object v6, v8, v14

    const/4 v6, 0x2

    aput-object v11, v8, v6

    invoke-virtual {v0, v15, v8, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v11, 0x2

    goto :goto_d

    :cond_12
    move-object/from16 v16, v8

    const/4 v11, 0x2

    goto :goto_d

    :cond_13
    move-object/from16 v16, v8

    if-eq v14, v11, :cond_16

    if-nez v4, :cond_14

    const-string v6, "ag-props-correct.2"

    goto :goto_b

    :cond_14
    const-string v6, "ct-props-correct.4"

    :goto_b
    if-nez v4, :cond_15

    iget-object v8, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    goto :goto_c

    :cond_15
    invoke-virtual/range {p5 .. p5}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v8

    :goto_c
    const/4 v11, 0x2

    new-array v15, v11, [Ljava/lang/Object;

    aput-object v8, v15, v7

    iget-object v8, v14, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v14, 0x1

    aput-object v8, v15, v14

    invoke-virtual {v0, v6, v15, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_d

    :cond_16
    const/4 v11, 0x2

    :goto_d
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v8, v16

    const/4 v6, 0x1

    goto/16 :goto_5

    :cond_17
    :goto_e
    if-eqz v5, :cond_1c

    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANYATTRIBUTE:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fWildCardTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;

    invoke-virtual {v6, v5, v2, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->traverseAnyAttribute(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-result-object v2

    iget-object v3, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    if-nez v3, :cond_18

    iput-object v2, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    goto :goto_11

    :cond_18
    iget-object v3, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-short v6, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    invoke-virtual {v2, v3, v6}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->performIntersectionWith(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;S)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-result-object v2

    iput-object v2, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v2, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    if-nez v2, :cond_1b

    if-nez v4, :cond_19

    const-string v2, "src-attribute_group.2"

    goto :goto_f

    :cond_19
    const-string v2, "src-ct.4"

    :goto_f
    if-nez v4, :cond_1a

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    goto :goto_10

    :cond_1a
    invoke-virtual/range {p5 .. p5}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_10
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v7

    invoke-virtual {v0, v2, v3, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_1b
    :goto_11
    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v5

    :cond_1c
    return-object v5
.end method

.method traverseFacets(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;
    .locals 25

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-direct {v7, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->containsQName(Lmf/org/apache/xerces/impl/dv/XSSimpleType;)Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    move-object v12, v0

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/XSFacets;->reset()V

    const/4 v13, 0x0

    move-object/from16 v14, p1

    move v3, v13

    move v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v15, 0x0

    :goto_1
    if-nez v14, :cond_1

    move v8, v4

    move-object/from16 v22, v5

    move-object v13, v6

    move v5, v3

    goto/16 :goto_f

    :cond_1
    invoke-static {v14}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ENUMERATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 p1, v5

    const/4 v5, 0x2

    const/4 v11, 0x1

    if-eqz v1, :cond_a

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v14, v13, v9, v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Z)[Ljava/lang/Object;

    move-result-object v1

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v0, v1, v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v0, "s4s-att-must-appear"

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ENUMERATION:Ljava/lang/String;

    aput-object v5, v2, v13

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    aput-object v5, v2, v11

    invoke-virtual {v7, v0, v2, v14}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v1, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    invoke-static {v14}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v14

    move-object/from16 v5, p1

    goto :goto_1

    :cond_2
    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ENUMNSDECLS:I

    aget-object v0, v1, v0

    move-object v5, v0

    check-cast v5, Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v0

    if-ne v0, v11, :cond_4

    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getPrimitiveKind()S

    move-result v0

    const/16 v13, 0x14

    if-ne v0, v13, :cond_4

    iget-object v0, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fValidationContext:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    :try_start_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fQNameDV:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget-object v13, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fValidationContext:Lmf/org/apache/xerces/impl/validation/ValidationState;

    const/4 v11, 0x0

    invoke-interface {v0, v2, v13, v11}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    const/4 v13, 0x6

    invoke-virtual {v11, v9, v13, v0, v14}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v11
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v11, v0, v14}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v11, 0x0

    :goto_2
    if-nez v11, :cond_3

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v1, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    invoke-static {v14}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v14

    move-object/from16 v5, p1

    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_3
    iget-object v0, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fValidationContext:Lmf/org/apache/xerces/impl/validation/ValidationState;

    iget-object v11, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v0, v11}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    :cond_4
    if-nez v6, :cond_5

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    move-object v11, v0

    move-object v0, v6

    goto :goto_3

    :cond_5
    move-object/from16 v11, p1

    move-object v0, v6

    :goto_3
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    if-eqz v10, :cond_6

    invoke-virtual {v12, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_6
    invoke-static {v14}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v13

    if-eqz v13, :cond_7

    invoke-static {v13}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->getLength()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    const/4 v6, 0x0

    invoke-virtual {v7, v13, v1, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v5

    invoke-virtual {v11, v2, v5}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(ILmf/org/apache/xerces/xs/XSObject;)V

    invoke-static {v13}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v13

    move-object/from16 v19, v1

    move/from16 v21, v3

    move v8, v4

    move/from16 v17, v10

    const/4 v10, 0x2

    goto :goto_4

    :cond_7
    invoke-static {v14}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->getLength()I

    move-result v2

    const/4 v6, 0x1

    sub-int/2addr v2, v6

    const/4 v6, 0x0

    move-object/from16 v19, v1

    move-object/from16 v1, p0

    move/from16 v20, v2

    move-object v2, v14

    move/from16 v21, v3

    move-object v3, v5

    move v5, v4

    move-object/from16 v4, v19

    move v8, v5

    move/from16 v17, v10

    const/4 v10, 0x2

    move v5, v6

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    move/from16 v2, v20

    invoke-virtual {v11, v2, v1}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(ILmf/org/apache/xerces/xs/XSObject;)V

    goto :goto_4

    :cond_8
    move-object/from16 v19, v1

    move/from16 v21, v3

    move v8, v4

    move/from16 v17, v10

    const/4 v10, 0x2

    :goto_4
    if-eqz v13, :cond_9

    const-string v1, "s4s-elt-must-match.1"

    const/4 v5, 0x3

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "enumeration"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "(annotation?)"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v13}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v7, v1, v2, v13}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_9
    move-object v6, v0

    move v4, v8

    move-object v5, v11

    move-object/from16 v0, v19

    move/from16 v3, v21

    goto/16 :goto_8

    :cond_a
    move/from16 v21, v3

    move v8, v4

    move/from16 v17, v10

    move v10, v5

    const/4 v5, 0x3

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_PATTERN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v1, 0x0

    invoke-virtual {v0, v14, v1, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v0

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_b

    const-string v2, "s4s-att-must-appear"

    new-array v3, v10, [Ljava/lang/Object;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_PATTERN:Ljava/lang/String;

    aput-object v4, v3, v1

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v7, v2, v3, v14}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v0, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    invoke-static {v14}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v14

    move-object/from16 v5, p1

    move v4, v8

    move/from16 v10, v17

    move/from16 v3, v21

    move-object/from16 v8, p2

    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_b
    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fPattern:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fPattern:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_c
    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fPattern:Ljava/lang/StringBuffer;

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fPattern:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_5
    invoke-static {v14}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v11

    if-eqz v11, :cond_e

    invoke-static {v11}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    if-nez v15, :cond_d

    new-instance v15, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v15}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    const/4 v1, 0x0

    goto :goto_6

    :cond_d
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v7, v11, v0, v1, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v2

    invoke-virtual {v15, v2}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    invoke-static {v11}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v11

    move-object/from16 v22, p1

    move v10, v5

    move-object v13, v6

    goto :goto_7

    :cond_e
    invoke-static {v14}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    if-nez v15, :cond_f

    new-instance v15, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v15}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    :cond_f
    const/4 v13, 0x0

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v4, v0

    move-object/from16 v22, p1

    move v10, v5

    move v5, v13

    move-object v13, v6

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-virtual {v15, v1}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    goto :goto_7

    :cond_10
    move-object/from16 v22, p1

    move v10, v5

    move-object v13, v6

    :goto_7
    if-eqz v11, :cond_11

    const-string v1, "s4s-elt-must-match.1"

    new-array v2, v10, [Ljava/lang/Object;

    const-string v3, "pattern"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "(annotation?)"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v11}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v7, v1, v2, v11}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_11
    move v4, v8

    move-object v6, v13

    move/from16 v3, v21

    move-object/from16 v5, v22

    :goto_8
    const/16 v16, 0x0

    goto/16 :goto_e

    :cond_12
    move-object/from16 v22, p1

    move v10, v5

    move-object v13, v6

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MINLENGTH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v4, 0x10

    const/16 v3, 0x80

    const/16 v2, 0x20

    const/16 v10, 0x40

    const/4 v11, 0x4

    if-eqz v1, :cond_13

    const/4 v1, 0x2

    goto/16 :goto_9

    :cond_13
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MAXLENGTH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    move v1, v11

    goto :goto_9

    :cond_14
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MAXEXCLUSIVE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    move v1, v10

    goto :goto_9

    :cond_15
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MAXINCLUSIVE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, v2

    goto :goto_9

    :cond_16
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MINEXCLUSIVE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v3

    goto :goto_9

    :cond_17
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MININCLUSIVE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/16 v1, 0x100

    goto :goto_9

    :cond_18
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_TOTALDIGITS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 v1, 0x200

    goto :goto_9

    :cond_19
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_FRACTIONDIGITS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/16 v1, 0x400

    goto :goto_9

    :cond_1a
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_WHITESPACE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    move v1, v4

    goto :goto_9

    :cond_1b
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_LENGTH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    const/4 v1, 0x1

    :goto_9
    iget-object v6, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v5, 0x0

    invoke-virtual {v6, v14, v5, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v6

    and-int v18, v8, v1

    if-eqz v18, :cond_1c

    const-string v1, "src-single-facet-value"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-virtual {v7, v1, v2, v14}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    invoke-static {v14}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v14

    move v4, v8

    move-object v6, v13

    move/from16 v10, v17

    move/from16 v3, v21

    move-object/from16 v5, v22

    move-object/from16 v8, p2

    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_1c
    sget v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v5, v6, v5

    if-nez v5, :cond_1e

    const-string v0, "value"

    const/4 v5, 0x0

    invoke-interface {v14, v5, v0}, Lmf/org/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    if-nez v0, :cond_1d

    const-string v0, "s4s-att-must-appear"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v14}, Lmf/org/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v7, v0, v1, v14}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_1d
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    invoke-static {v14}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v14

    move v4, v8

    move-object v6, v13

    move/from16 v10, v17

    move/from16 v3, v21

    move-object/from16 v5, v22

    move-object/from16 v8, p2

    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_1e
    const/4 v5, 0x0

    or-int/2addr v8, v1

    int-to-short v8, v8

    sget v16, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FIXED:I

    aget-object v16, v6, v16

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eqz v16, :cond_1f

    move/from16 v5, v21

    or-int/2addr v5, v1

    int-to-short v5, v5

    move/from16 v21, v5

    goto :goto_a

    :cond_1f
    move/from16 v5, v21

    :goto_a
    if-eq v1, v11, :cond_27

    if-eq v1, v4, :cond_26

    if-eq v1, v2, :cond_25

    if-eq v1, v10, :cond_24

    if-eq v1, v3, :cond_23

    const/16 v5, 0x100

    if-eq v1, v5, :cond_22

    const/16 v10, 0x200

    if-eq v1, v10, :cond_21

    const/16 v2, 0x400

    if-eq v1, v2, :cond_20

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    sget v23, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v23, v6, v23

    check-cast v23, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v3

    iput v3, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->minLength:I

    goto/16 :goto_b

    :pswitch_1
    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v3, v6, v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v3

    iput v3, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->length:I

    goto/16 :goto_b

    :cond_20
    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v3, v6, v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v3

    iput v3, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->fractionDigits:I

    goto :goto_b

    :cond_21
    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v3, v6, v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v3

    iput v3, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->totalDigits:I

    goto :goto_b

    :cond_22
    const/16 v10, 0x200

    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v3, v6, v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    goto :goto_b

    :cond_23
    const/16 v5, 0x100

    const/16 v10, 0x200

    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v3, v6, v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    goto :goto_b

    :cond_24
    const/16 v5, 0x100

    const/16 v10, 0x200

    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v3, v6, v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    goto :goto_b

    :cond_25
    const/16 v5, 0x100

    const/16 v10, 0x200

    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v3, v6, v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    goto :goto_b

    :cond_26
    const/16 v5, 0x100

    const/16 v10, 0x200

    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v3, v6, v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/util/XInt;->shortValue()S

    move-result v3

    iput-short v3, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpace:S

    goto :goto_b

    :cond_27
    const/16 v5, 0x100

    const/16 v10, 0x200

    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v3, v6, v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v3

    iput v3, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxLength:I

    :goto_b
    invoke-static {v14}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v3

    if-eqz v3, :cond_28

    invoke-static {v3}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v2, 0x0

    invoke-virtual {v7, v3, v6, v2, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v4

    invoke-static {v3}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v3

    move v10, v1

    move-object v1, v4

    move-object/from16 v23, v6

    const/16 v16, 0x0

    goto :goto_c

    :cond_28
    invoke-static {v14}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_29

    const/16 v24, 0x0

    move v2, v1

    move-object/from16 v1, p0

    move v10, v2

    move-object v2, v14

    move-object/from16 v19, v3

    move-object v3, v4

    move-object v4, v6

    const/16 v16, 0x0

    move/from16 v5, v24

    move-object/from16 v23, v6

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    move-object/from16 v3, v19

    goto :goto_c

    :cond_29
    move v10, v1

    move-object/from16 v19, v3

    move-object/from16 v23, v6

    const/16 v16, 0x0

    move-object/from16 v1, v16

    :goto_c
    if-eq v10, v11, :cond_31

    const/16 v2, 0x10

    if-eq v10, v2, :cond_30

    const/16 v2, 0x20

    if-eq v10, v2, :cond_2f

    const/16 v2, 0x40

    if-eq v10, v2, :cond_2e

    const/16 v2, 0x80

    if-eq v10, v2, :cond_2d

    const/16 v2, 0x100

    if-eq v10, v2, :cond_2c

    const/16 v2, 0x200

    if-eq v10, v2, :cond_2b

    const/16 v2, 0x400

    if-eq v10, v2, :cond_2a

    packed-switch v10, :pswitch_data_1

    goto :goto_d

    :pswitch_2
    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v1, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto :goto_d

    :pswitch_3
    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v1, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto :goto_d

    :cond_2a
    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v1, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto :goto_d

    :cond_2b
    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v1, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto :goto_d

    :cond_2c
    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v1, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto :goto_d

    :cond_2d
    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v1, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto :goto_d

    :cond_2e
    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v1, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto :goto_d

    :cond_2f
    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v1, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto :goto_d

    :cond_30
    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v1, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto :goto_d

    :cond_31
    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v1, v2, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    :goto_d
    if-eqz v3, :cond_32

    const-string v1, "s4s-elt-must-match.1"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const-string v0, "(annotation?)"

    const/4 v4, 0x1

    aput-object v0, v2, v4

    invoke-static {v3}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    aput-object v0, v2, v4

    invoke-virtual {v7, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_32
    move v4, v8

    move-object v6, v13

    move/from16 v3, v21

    move-object/from16 v5, v22

    move-object/from16 v0, v23

    :goto_e
    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v0, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    invoke-static {v14}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v14

    move/from16 v10, v17

    move-object/from16 v8, p2

    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_33
    move/from16 v5, v21

    :goto_f
    if-eqz v13, :cond_34

    or-int/lit16 v0, v8, 0x800

    int-to-short v4, v0

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v13, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->enumeration:Ljava/util/Vector;

    iput-object v12, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->enumNSDecls:Ljava/util/Vector;

    move-object/from16 v11, v22

    iput-object v11, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->enumAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    goto :goto_10

    :cond_34
    move v4, v8

    :goto_10
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fPattern:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_35

    or-int/lit8 v0, v4, 0x8

    int-to-short v4, v0

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fPattern:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->pattern:Ljava/lang/String;

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iput-object v15, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :cond_35
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fPattern:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lmf/org/apache/xerces/impl/dv/XSFacets;

    invoke-direct {v0, v1, v14, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;-><init>(Lmf/org/apache/xerces/impl/dv/XSFacets;Lmf/org/w3c/dom/Element;SS)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;
    .locals 7

    iget-object p4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v0, p5, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {p4, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object p4

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    aget-object p3, p3, v0

    check-cast p3, Ljava/util/Vector;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, -0x1

    if-lt v2, v3, :cond_2

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {p3, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    iget-boolean p3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fValidateAnnotations:Z

    if-eqz p3, :cond_1

    new-instance p3, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;

    invoke-direct {p3, p2, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;-><init>(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    invoke-virtual {p5, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->addAnnotation(Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;)V

    :cond_1
    new-instance p1, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    invoke-direct {p1, p2, p4}, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    return-object p1

    :cond_2
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v5, 0x3a

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v4, :cond_3

    const-string v4, ""

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    :goto_1
    iget-object v5, p5, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v6, v4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p3, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->processAttValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\" "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_4
    iget-boolean p3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->fValidateAnnotations:Z

    if-eqz p3, :cond_5

    new-instance p3, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;

    invoke-direct {p3, p2, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;-><init>(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    invoke-virtual {p5, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->addAnnotation(Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;)V

    :cond_5
    new-instance p1, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    invoke-direct {p1, p2, p4}, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    return-object p1
.end method
