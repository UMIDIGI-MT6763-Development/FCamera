.class public Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
.super Ljava/lang/Object;
.source "XSComplexTypeDecl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSComplexTypeDefinition;
.implements Lmf/org/w3c/dom/TypeInfo;


# static fields
.field private static final CT_HAS_TYPE_ID:S = 0x2s

.field private static final CT_IS_ABSTRACT:S = 0x1s

.field private static final CT_IS_ANONYMOUS:S = 0x4s

.field static final DERIVATION_ANY:I = 0x0

.field static final DERIVATION_EXTENSION:I = 0x2

.field static final DERIVATION_LIST:I = 0x8

.field static final DERIVATION_RESTRICTION:I = 0x1

.field static final DERIVATION_UNION:I = 0x4


# instance fields
.field fAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

.field fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

.field fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

.field fBlock:S

.field fCMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

.field fContentType:S

.field fDerivedBy:S

.field fFinal:S

.field fMiscFlags:S

.field fName:Ljava/lang/String;

.field private fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

.field fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

.field fTargetNamespace:Ljava/lang/String;

.field fUPACMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

.field fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fTargetNamespace:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    const/4 v1, 0x2

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fDerivedBy:S

    const/4 v1, 0x0

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fFinal:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBlock:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fCMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fUPACMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    return-void
.end method

.method private isDerivedByAny(Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/xs/XSTypeDefinition;)Z
    .locals 3

    const/4 v0, 0x0

    move-object v2, v0

    move-object v0, p4

    move-object p4, v2

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-ne v0, p4, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    if-nez p1, :cond_1

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_6

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result p4

    if-eqz p4, :cond_3

    return v1

    :cond_3
    invoke-direct {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->isDerivedByExtension(Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result p4

    if-nez p4, :cond_4

    return v1

    :cond_4
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p4

    move-object v2, v0

    move-object v0, p4

    move-object p4, v2

    goto :goto_0

    :cond_5
    :goto_1
    const/4 v1, 0x0

    :cond_6
    :goto_2
    return v1
.end method

.method private isDerivedByExtension(Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/xs/XSTypeDefinition;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move-object v4, v1

    move-object v1, p4

    move-object p4, v4

    :goto_0
    if-eqz v1, :cond_9

    if-ne v1, p4, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p1, :cond_1

    sget-object p4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const-string p4, "anySimpleType"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    sget-object p4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const-string p4, "anyType"

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    if-nez p1, :cond_2

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_3

    :cond_2
    if-eqz p1, :cond_4

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    :cond_3
    return v2

    :cond_4
    instance-of p4, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v3, 0x1

    if-eqz p4, :cond_7

    sget-object p4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    const-string p4, "anyType"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    const-string p2, "anySimpleType"

    :cond_5
    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_6

    check-cast v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    and-int/2addr p3, v3

    invoke-virtual {v1, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    and-int/2addr p1, v2

    return p1

    :cond_6
    check-cast v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v1, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    and-int/2addr p1, v2

    return p1

    :cond_7
    move-object p4, v1

    check-cast p4, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {p4}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getDerivationMethod()S

    move-result p4

    if-ne p4, v3, :cond_8

    or-int/lit8 p4, v2, 0x1

    move v2, p4

    :cond_8
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p4

    move-object v4, v1

    move-object v1, p4

    move-object p4, v4

    goto/16 :goto_0

    :cond_9
    :goto_1
    return v0
.end method

.method private isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/xs/XSTypeDefinition;)Z
    .locals 4

    const/4 v0, 0x0

    move-object v3, v0

    move-object v0, p4

    move-object p4, v3

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_8

    if-ne v0, p4, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    sget-object p4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const-string p4, "anySimpleType"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    return v1

    :cond_1
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_3

    :cond_2
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_4

    if-nez p1, :cond_4

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of p4, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz p4, :cond_6

    sget-object p4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    const-string p4, "anyType"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    const-string p2, "anySimpleType"

    :cond_5
    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1

    :cond_6
    move-object p4, v0

    check-cast p4, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {p4}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getDerivationMethod()S

    move-result p4

    const/4 v2, 0x2

    if-eq p4, v2, :cond_7

    return v1

    :cond_7
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p4

    move-object v3, v0

    move-object v0, p4

    move-object p4, v3

    goto :goto_0

    :cond_8
    :goto_1
    return v1
.end method


# virtual methods
.method appendTypeInfo(Ljava/lang/StringBuffer;)V
    .locals 4

    const-string v0, "EMPTY"

    const-string v1, "SIMPLE"

    const-string v2, "ELEMENT"

    const-string v3, "MIXED"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMPTY"

    const-string v2, "EXTENSION"

    const-string v3, "RESTRICTION"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "Complex type name=\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\', "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v2, :cond_0

    const-string v2, " base type name=\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v2}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\', "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v2, " content type=\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\', "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " isAbstract=\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAbstract()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v0, "\', "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " hasTypeId=\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->containsTypeID()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v0, "\', "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " final=\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fFinal:S

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "\', "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " block=\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBlock:S

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "\', "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    if-eqz v0, :cond_1

    const-string v0, " particle=\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\', "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v0, " derivedBy=\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fDerivedBy:S

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\'. "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public containsTypeID()Z
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public derivedFrom(Ljava/lang/String;Ljava/lang/String;S)Z
    .locals 3

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return p3

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "anyType"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p1, :cond_2

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-eq v1, v2, :cond_5

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-ne v1, v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v1

    goto :goto_0

    :cond_5
    :goto_1
    sget-object p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-eq v1, p1, :cond_6

    sget-object p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eq v1, p1, :cond_6

    return v0

    :cond_6
    return p3
.end method

.method public derivedFromType(Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z
    .locals 3

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    move-object v0, p0

    :goto_0
    if-eq v0, p1, :cond_3

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-eq v0, v2, :cond_3

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    goto :goto_0

    :cond_3
    :goto_1
    if-ne v0, p1, :cond_4

    return v1

    :cond_4
    return p2
.end method

.method public getAbstract()Z
    .locals 2

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_0
    return-object v0
.end method

.method public getAnonymous()Z
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAttrGrp()Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    return-object v0
.end method

.method public getAttributeUse(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeUse;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUse(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeUse;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeUses()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUses()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeWildcard()Lmf/org/apache/xerces/xs/XSWildcard;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeWildcard()Lmf/org/apache/xerces/xs/XSWildcard;

    move-result-object v0

    return-object v0
.end method

.method public getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    return-object v0
.end method

.method public getContentModel(Lmf/org/apache/xerces/impl/xs/models/CMBuilder;)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentModel(Lmf/org/apache/xerces/impl/xs/models/CMBuilder;Z)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getContentModel(Lmf/org/apache/xerces/impl/xs/models/CMBuilder;Z)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fCMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fUPACMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->getContentModel(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Z)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fUPACMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fUPACMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fUPACMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    invoke-interface {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->isCompactedForUPA()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fUPACMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fCMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    :cond_0
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fUPACMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    const/4 p2, 0x0

    :try_start_1
    invoke-virtual {p1, p0, p2}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->getContentModel(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Z)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fCMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    :cond_2
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fCMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getContentType()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    return v0
.end method

.method public getDerivationMethod()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fDerivedBy:S

    return v0
.end method

.method public getFinal()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fFinal:S

    return v0
.end method

.method public getFinalSet()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fFinal:S

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fTargetNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    return-object v0
.end method

.method public getParticle()Lmf/org/apache/xerces/xs/XSParticle;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    return-object v0
.end method

.method public getProhibitedSubstitutions()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBlock:S

    return v0
.end method

.method public getSimpleType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    return-object v0
.end method

.method public getTargetNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fTargetNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getType()S
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getTypeCategory()S
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeNamespace()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "anyType"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne p3, v1, :cond_1

    const/4 v2, 0x2

    if-ne p3, v2, :cond_1

    return v1

    :cond_1
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, p2, p3, p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_2
    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_3

    invoke-direct {p0, p1, p2, p3, p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->isDerivedByExtension(Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v1

    :cond_3
    and-int/lit8 v1, p3, 0x8

    if-nez v1, :cond_4

    and-int/lit8 v4, p3, 0x4

    if-eqz v4, :cond_8

    :cond_4
    if-nez v2, :cond_8

    if-nez v3, :cond_8

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "anyType"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string p2, "anySimpleType"

    :cond_5
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    const-string v5, "anyType"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fTargetNamespace:Ljava/lang/String;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_6
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v4, :cond_7

    instance-of v5, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v5, :cond_7

    check-cast v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v4, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1

    :cond_7
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v4, :cond_8

    instance-of v5, v4, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eqz v5, :cond_8

    check-cast v4, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v4, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1

    :cond_8
    if-nez v3, :cond_9

    if-nez v2, :cond_9

    if-nez v1, :cond_9

    and-int/lit8 v1, p3, 0x4

    if-nez v1, :cond_9

    invoke-direct {p0, p1, p2, p3, p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->isDerivedByAny(Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result p1

    return p1

    :cond_9
    return v0
.end method

.method public isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public isFinal(S)Z
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fFinal:S

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isProhibitedSubstitution(S)Z
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBlock:S

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fTargetNamespace:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    const/4 v1, 0x2

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fDerivedBy:S

    const/4 v1, 0x0

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fFinal:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBlock:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->reset()V

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fCMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fUPACMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->clearXSObjectList()V

    :cond_0
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    return-void
.end method

.method public setContainsTypeID()V
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    or-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    return-void
.end method

.method public setIsAbstractType()V
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    or-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    return-void
.end method

.method public setIsAnonymous()V
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    or-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    return-void
.end method

.method setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    return-void
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;SSSSZLmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;)V
    .locals 0

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fTargetNamespace:Ljava/lang/String;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-short p4, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fDerivedBy:S

    iput-short p5, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fFinal:S

    iput-short p6, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBlock:S

    iput-short p7, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-eqz p8, :cond_0

    iget-short p1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    or-int/lit8 p1, p1, 0x1

    int-to-short p1, p1

    iput-short p1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    :cond_0
    iput-object p9, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    iput-object p10, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object p11, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iput-object p12, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->appendTypeInfo(Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
