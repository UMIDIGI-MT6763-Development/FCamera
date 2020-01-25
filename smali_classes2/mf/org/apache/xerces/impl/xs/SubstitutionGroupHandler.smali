.class public Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;
.super Ljava/lang/Object;
.source "SubstitutionGroupHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;
    }
.end annotation


# static fields
.field private static final EMPTY_GROUP:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

.field private static final EMPTY_VECTOR:[Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;


# instance fields
.field fSubGroups:Ljava/util/Hashtable;

.field fSubGroupsB:Ljava/util/Hashtable;

.field private final fXSElementDeclHelper:Lmf/org/apache/xerces/impl/xs/XSElementDeclHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    sput-object v1, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->EMPTY_GROUP:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    sput-object v0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->EMPTY_VECTOR:[Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/XSElementDeclHelper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->fSubGroupsB:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->fSubGroups:Ljava/util/Hashtable;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->fXSElementDeclHelper:Lmf/org/apache/xerces/impl/xs/XSElementDeclHelper;

    return-void
.end method

.method private getDBMethods(Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :cond_0
    :goto_0
    if-eq p1, p2, :cond_4

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-ne p1, v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_2

    move-object v3, p1

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-short v3, v3, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fDerivedBy:S

    or-int/2addr v1, v3

    int-to-short v1, v1

    goto :goto_1

    :cond_2
    or-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    :goto_1
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p1

    if-nez p1, :cond_3

    sget-object p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    :cond_3
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v3

    if-ne v3, v4, :cond_0

    move-object v3, p1

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-short v3, v3, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBlock:S

    or-int/2addr v2, v3

    int-to-short v2, v2

    goto :goto_0

    :cond_4
    :goto_2
    if-ne p1, p2, :cond_6

    and-int p1, v1, v2

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    iput-short v1, p3, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;->dMethod:S

    iput-short v2, p3, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;->bMethod:S

    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_3
    return v0
.end method

.method private getSubGroupB(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;)[Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;
    .locals 11

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->fSubGroupsB:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->fSubGroupsB:Ljava/util/Hashtable;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->EMPTY_VECTOR:[Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    invoke-virtual {p2, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->EMPTY_VECTOR:[Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    return-object p1

    :cond_0
    instance-of v1, v0, [Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    if-eqz v1, :cond_1

    check-cast v0, [Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    return-object v0

    :cond_1
    check-cast v0, Ljava/util/Vector;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-gez v2, :cond_3

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result p2

    new-array v3, p2, [Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-gez p2, :cond_2

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->fSubGroupsB:Ljava/util/Hashtable;

    invoke-virtual {p2, p1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_2
    invoke-virtual {v1, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    aput-object v0, v3, p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v4, v3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v5, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-direct {p0, v4, v5, p2}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getDBMethods(Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    iget-short v4, p2, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;->dMethod:S

    iget-short v5, p2, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;->bMethod:S

    new-instance v6, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    iget-short v7, p2, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;->dMethod:S

    iget-short v8, p2, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;->bMethod:S

    invoke-direct {v6, v3, v7, v8}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;-><init>(Lmf/org/apache/xerces/impl/xs/XSElementDecl;SS)V

    invoke-virtual {v1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-direct {p0, v3, p2}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getSubGroupB(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;)[Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    move-result-object v3

    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    :goto_2
    if-gez v6, :cond_5

    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_5
    aget-object v7, v3, v6

    iget-short v7, v7, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;->dMethod:S

    or-int/2addr v7, v4

    int-to-short v7, v7

    aget-object v8, v3, v6

    iget-short v8, v8, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;->bMethod:S

    or-int/2addr v8, v5

    int-to-short v8, v8

    and-int v9, v7, v8

    if-eqz v9, :cond_6

    goto :goto_4

    :cond_6
    new-instance v9, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    aget-object v10, v3, v6

    iget-object v10, v10, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;->sub:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-direct {v9, v10, v7, v8}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;-><init>(Lmf/org/apache/xerces/impl/xs/XSElementDecl;SS)V

    invoke-virtual {v1, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_2
.end method

.method private typeDerivationOK(Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z
    .locals 6

    const/4 v0, 0x0

    move-object v1, p1

    move v2, p3

    move v3, v0

    :cond_0
    :goto_0
    if-eq v1, p2, :cond_4

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-ne v1, v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v4

    const/16 v5, 0xf

    if-ne v4, v5, :cond_2

    move-object v4, v1

    check-cast v4, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-short v4, v4, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fDerivedBy:S

    or-int/2addr v3, v4

    int-to-short v3, v3

    goto :goto_1

    :cond_2
    or-int/lit8 v3, v3, 0x2

    int-to-short v3, v3

    :goto_1
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v1

    if-nez v1, :cond_3

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    :cond_3
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v4

    if-ne v4, v5, :cond_0

    move-object v4, v1

    check-cast v4, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-short v4, v4, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBlock:S

    or-int/2addr v2, v4

    int-to-short v2, v2

    goto :goto_0

    :cond_4
    :goto_2
    const/4 v4, 0x1

    if-eq v1, p2, :cond_8

    invoke-interface {p2}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_7

    check-cast p2, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    invoke-interface {p2}, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    invoke-interface {p2}, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object p2

    invoke-interface {p2}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v1

    move v2, v0

    :goto_3
    if-lt v2, v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-interface {p2, v2}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-direct {p0, p1, v3, p3}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->typeDerivationOK(Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result v3

    if-eqz v3, :cond_6

    return v4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    return v0

    :cond_8
    and-int p1, v3, v2

    if-eqz p1, :cond_9

    return v0

    :cond_9
    return v4
.end method


# virtual methods
.method public addSubstitutionGroup([Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 5

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-void

    :cond_0
    aget-object v1, p1, v0

    iget-object v2, v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fSubGroup:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->fSubGroupsB:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->fSubGroupsB:Ljava/util/Hashtable;

    invoke-virtual {v4, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getMatchingElemDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 3

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v1, p2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v1, p2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    return-object p2

    :cond_0
    iget-short v0, p2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fScope:S

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    return-object v2

    :cond_1
    iget-short v0, p2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    return-object v2

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->fXSElementDeclHelper:Lmf/org/apache/xerces/impl/xs/XSElementDeclHelper;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/impl/xs/XSElementDeclHelper;->getGlobalElementDecl(Lmf/org/apache/xerces/xni/QName;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v2

    :cond_3
    iget-short v0, p2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->substitutionGroupOK(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;S)Z

    move-result p2

    if-eqz p2, :cond_4

    return-object p1

    :cond_4
    return-object v2
.end method

.method public getSubstitutionGroup(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 8

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->fSubGroups:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    return-object v0

    :cond_0
    iget-short v0, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->fSubGroups:Ljava/util/Hashtable;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->EMPTY_GROUP:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->EMPTY_GROUP:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    return-object p1

    :cond_1
    new-instance v0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;-><init>()V

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getSubGroupB(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;)[Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    move-result-object v0

    array-length v1, v0

    new-array v2, v1, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-lt v4, v1, :cond_3

    if-ge v5, v1, :cond_2

    new-array v0, v5, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-static {v2, v3, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->fSubGroups:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_3
    iget-short v6, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    aget-object v7, v0, v4

    iget-short v7, v7, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;->dMethod:S

    and-int/2addr v6, v7

    if-nez v6, :cond_4

    add-int/lit8 v6, v5, 0x1

    aget-object v7, v0, v4

    iget-object v7, v7, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;->sub:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    aput-object v7, v2, v5

    move v5, v6

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public inSubstitutionGroup(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)Z
    .locals 1

    iget-short v0, p2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->substitutionGroupOK(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;S)Z

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->fSubGroupsB:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->fSubGroups:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method protected substitutionGroupOK(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;S)Z
    .locals 2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    and-int/lit8 v0, p3, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fSubGroup:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    :goto_0
    if-eqz v0, :cond_3

    if-ne v0, p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fSubGroup:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    goto :goto_0

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object p2, p2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->typeDerivationOK(Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result p1

    return p1
.end method
