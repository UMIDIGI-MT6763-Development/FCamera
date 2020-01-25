.class public Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
.super Ljava/lang/Object;
.source "XSAttributeGroupDecl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSAttributeGroupDefinition;


# static fields
.field private static final INITIAL_SIZE:I = 0x5


# instance fields
.field public fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

.field fAttrUseNum:I

.field protected fAttrUses:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

.field fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

.field public fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

.field public fIDAttrName:Ljava/lang/String;

.field public fName:Ljava/lang/String;

.field private fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

.field public fTargetNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fTargetNamespace:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    const/4 v1, 0x5

    new-array v1, v1, [Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fIDAttrName:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUses:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    return-void
.end method

.method static final resize([Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;I)[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    .locals 2

    new-array v0, p1, [Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public addAttributeUse(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;
    .locals 4

    iget-short v0, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fIDAttrName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fIDAttrName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    array-length v3, v2

    if-ne v0, v3, :cond_2

    mul-int/2addr v0, v1

    invoke-static {v2, v0}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->resize([Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;I)[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    aput-object p1, v0, v1

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAnnotation()Lmf/org/apache/xerces/xs/XSAnnotation;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSAnnotation;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_0
    return-object v0
.end method

.method public getAttributeUse(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeUse;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v1, v1, v0

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v1, v1, v0

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    if-ne v1, p2, :cond_1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object p1, p1, v0

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getAttributeUseNoProhibited(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeUse;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v1, v1, v0

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v1, v1, v0

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    if-ne v1, p2, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v1, v1, v0

    iget-short v1, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object p1, p1, v0

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getAttributeUses()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUses:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-nez v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUses:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUses:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    return-object v0
.end method

.method public getAttributeWildcard()Lmf/org/apache/xerces/xs/XSWildcard;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fTargetNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    return-object v0
.end method

.method public getType()S
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public removeProhibitedAttrs()V
    .locals 5

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    if-lt v1, v3, :cond_1

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    return-void

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v3, v3, v1

    iget-short v3, v3, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v4, v4, v1

    aput-object v4, v0, v2

    move v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public replaceAttributeUse(Lmf/org/apache/xerces/xs/XSAttributeUse;Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v2, v1, v0

    if-ne v2, p1, :cond_1

    aput-object p2, v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fTargetNamespace:Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    if-lt v2, v3, :cond_0

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fIDAttrName:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aput-object v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    return-void
.end method

.method public validRestrictionOf(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)[Ljava/lang/Object;
    .locals 13

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-lt v1, v2, :cond_5

    move v1, v0

    :goto_1
    iget v2, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    if-eqz v1, :cond_2

    iget-object v2, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    if-nez v2, :cond_0

    new-array p2, v5, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "derivation-ok-restriction.4.1"

    aput-object p1, p2, v6

    return-object p2

    :cond_0
    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->isSubsetOf(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z

    move-result v1

    if-nez v1, :cond_1

    new-array p2, v5, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "derivation-ok-restriction.4.2"

    aput-object p1, p2, v6

    return-object p2

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v2, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->weakerProcessContents(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v0

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->getProcessContentsAsString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v6

    iget-object p1, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->getProcessContentsAsString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    const-string p1, "derivation-ok-restriction.4.3"

    aput-object p1, v1, v4

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1

    :cond_3
    iget-object v2, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v2, v2, v1

    iget-short v7, v2, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    if-ne v7, v6, :cond_4

    iget-object v7, v2, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v8, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    invoke-virtual {p0, v8, v7}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUse(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeUse;

    move-result-object v7

    if-nez v7, :cond_4

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p1, p2, v0

    iget-object p1, v2, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    aput-object p1, p2, v6

    const-string p1, "derivation-ok-restriction.3"

    aput-object p1, p2, v5

    return-object p2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v2, v2, v1

    iget-object v7, v2, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v8, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    iget-object v9, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    invoke-virtual {p2, v8, v9}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUse(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeUse;

    move-result-object v8

    check-cast v8, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    if-eqz v8, :cond_f

    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->getRequired()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->getRequired()Z

    move-result v9

    if-nez v9, :cond_7

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v0

    iget-object p1, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    aput-object p1, p2, v6

    iget-short p1, v2, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    if-nez p1, :cond_6

    const-string p1, "optional"

    goto :goto_2

    :cond_6
    const-string p1, "prohibited"

    :goto_2
    aput-object p1, p2, v5

    const-string p1, "derivation-ok-restriction.2.1.1"

    aput-object p1, p2, v4

    return-object p2

    :cond_7
    iget-short v9, v2, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    if-ne v9, v5, :cond_8

    goto/16 :goto_8

    :cond_8
    iget-object v9, v8, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v10, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget-object v11, v9, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget-object v12, v9, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v12}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getFinal()S

    move-result v12

    invoke-static {v10, v11, v12}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkSimpleDerivationOk(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result v10

    const/4 v11, 0x5

    if-nez v10, :cond_9

    new-array p2, v11, [Ljava/lang/Object;

    aput-object p1, p2, v0

    iget-object p1, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    aput-object p1, p2, v6

    iget-object p1, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v5

    iget-object p1, v9, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v4

    const-string p1, "derivation-ok-restriction.2.1.2"

    aput-object p1, p2, v3

    return-object p2

    :cond_9
    iget-short v10, v8, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    if-eqz v10, :cond_a

    iget-short v10, v8, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    goto :goto_3

    :cond_a
    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v10

    :goto_3
    iget-short v12, v2, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    if-eqz v12, :cond_b

    iget-short v12, v2, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    goto :goto_4

    :cond_b
    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v12

    :goto_4
    if-ne v10, v5, :cond_12

    if-eq v12, v5, :cond_c

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p1, p2, v0

    iget-object p1, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    aput-object p1, p2, v6

    const-string p1, "derivation-ok-restriction.2.1.3.a"

    aput-object p1, p2, v5

    return-object p2

    :cond_c
    iget-object v10, v8, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-eqz v10, :cond_d

    iget-object v8, v8, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    goto :goto_5

    :cond_d
    iget-object v8, v9, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    :goto_5
    iget-object v9, v2, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-eqz v9, :cond_e

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    goto :goto_6

    :cond_e
    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    :goto_6
    iget-object v9, v8, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iget-object v10, v2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12

    new-array p2, v11, [Ljava/lang/Object;

    aput-object p1, p2, v0

    iget-object p1, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    aput-object p1, p2, v6

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v5

    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v4

    const-string p1, "derivation-ok-restriction.2.1.3.b"

    aput-object p1, p2, v3

    return-object p2

    :cond_f
    iget-object v2, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    if-nez v2, :cond_10

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p1, p2, v0

    iget-object p1, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    aput-object p1, p2, v6

    const-string p1, "derivation-ok-restriction.2.2.a"

    aput-object p1, p2, v5

    return-object p2

    :cond_10
    iget-object v8, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v0

    iget-object p1, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    aput-object p1, p2, v6

    iget-object p1, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    if-nez p1, :cond_11

    const-string p1, ""

    goto :goto_7

    :cond_11
    iget-object p1, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    :goto_7
    aput-object p1, p2, v5

    const-string p1, "derivation-ok-restriction.2.2.b"

    aput-object p1, p2, v4

    return-object p2

    :cond_12
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method
