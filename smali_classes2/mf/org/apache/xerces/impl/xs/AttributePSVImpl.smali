.class public Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;
.super Ljava/lang/Object;
.source "AttributePSVImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/AttributePSVI;


# instance fields
.field protected fDeclaration:Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

.field protected fErrors:[Ljava/lang/String;

.field protected fSpecified:Z

.field protected fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

.field protected fValidationAttempted:S

.field protected fValidationContext:Ljava/lang/String;

.field protected fValidity:S

.field protected fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fSpecified:Z

    new-instance v2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidationAttempted:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidity:S

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fErrors:[Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidationContext:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActualNormalizedValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->getActualValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getActualNormalizedValueType()S
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->getActualValueType()S

    move-result v0

    return v0
.end method

.method public getAttributeDeclaration()Lmf/org/apache/xerces/xs/XSAttributeDeclaration;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    return-object v0
.end method

.method public getErrorCodes()Lmf/org/apache/xerces/xs/StringList;
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fErrors:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lmf/org/apache/xerces/impl/xs/PSVIErrorList;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lmf/org/apache/xerces/impl/xs/PSVIErrorList;-><init>([Ljava/lang/String;Z)V

    return-object v1

    :cond_1
    :goto_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    return-object v0
.end method

.method public getErrorMessages()Lmf/org/apache/xerces/xs/StringList;
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fErrors:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lmf/org/apache/xerces/impl/xs/PSVIErrorList;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lmf/org/apache/xerces/impl/xs/PSVIErrorList;-><init>([Ljava/lang/String;Z)V

    return-object v1

    :cond_1
    :goto_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    return-object v0
.end method

.method public getIsSchemaSpecified()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fSpecified:Z

    return v0
.end method

.method public getItemValueTypes()Lmf/org/apache/xerces/xs/ShortList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->getListValueTypes()Lmf/org/apache/xerces/xs/ShortList;

    move-result-object v0

    return-object v0
.end method

.method public getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    return-object v0
.end method

.method public getSchemaDefault()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSAttributeDeclaration;->getConstraintValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSchemaNormalizedValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->getNormalizedValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSchemaValue()Lmf/org/apache/xerces/xs/XSValue;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    return-object v0
.end method

.method public getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    return-object v0
.end method

.method public getValidationAttempted()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidationAttempted:S

    return v0
.end method

.method public getValidationContext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidationContext:Ljava/lang/String;

    return-object v0
.end method

.method public getValidity()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidity:S

    return v0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fSpecified:Z

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidationAttempted:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidity:S

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fErrors:[Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidationContext:Ljava/lang/String;

    return-void
.end method
