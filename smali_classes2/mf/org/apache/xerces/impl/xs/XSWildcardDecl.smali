.class public Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
.super Ljava/lang/Object;
.source "XSWildcardDecl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSWildcard;


# static fields
.field public static final ABSENT:Ljava/lang/String;


# instance fields
.field public fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

.field private fDescription:Ljava/lang/String;

.field public fNamespaceList:[Ljava/lang/String;

.field public fProcessContents:S

.field public fType:S


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fDescription:Ljava/lang/String;

    return-void
.end method

.method private areSame(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z
    .locals 5

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iget-short v1, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v0, v0, v2

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object p1, p1, v2

    if-ne v0, p1, :cond_1

    return v1

    :cond_1
    return v2

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v0, v0

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v3, v3

    if-ne v0, v3, :cond_5

    move v0, v2

    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v4, v3

    if-lt v0, v4, :cond_3

    return v1

    :cond_3
    aget-object v3, v3, v0

    iget-object v4, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->elementInSet(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v2
.end method


# virtual methods
.method public allowNamespace(Ljava/lang/String;)Z
    .locals 6

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v0, v0

    move v2, v3

    move v4, v2

    :goto_0
    if-ge v2, v0, :cond_3

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v5, v5, v2

    if-ne p1, v5, :cond_2

    move v4, v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-nez v4, :cond_4

    return v1

    :cond_4
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v2, 0x3

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v0, v0

    move v2, v3

    :goto_2
    if-lt v2, v0, :cond_5

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-ne p1, v4, :cond_6

    return v1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    return v3
.end method

.method elementInSet(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_2

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, p2, v0

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public getAnnotation()Lmf/org/apache/xerces/xs/XSAnnotation;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

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

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_0
    return-object v0
.end method

.method public getConstraintType()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNsConstraintList()Lmf/org/apache/xerces/xs/StringList;
    .locals 3

    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    array-length v2, v1

    :goto_0
    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;-><init>([Ljava/lang/String;I)V

    return-object v0
.end method

.method public getProcessContents()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    return v0
.end method

.method public getProcessContentsAsString()Ljava/lang/String;
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    packed-switch v0, :pswitch_data_0

    const-string v0, "invalid value"

    return-object v0

    :pswitch_0
    const-string v0, "lax"

    return-object v0

    :pswitch_1
    const-string v0, "skip"

    return-object v0

    :pswitch_2
    const-string v0, "strict"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getType()S
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method intersect2sets([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    array-length v4, p1

    if-lt v2, v4, :cond_0

    new-array p1, v3, [Ljava/lang/String;

    invoke-static {v0, v1, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_0
    aget-object v4, p1, v2

    invoke-virtual {p0, v4, p2}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->elementInSet(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    aget-object v5, p1, v2

    aput-object v5, v0, v3

    move v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public isSubsetOf(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-short v1, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return v2

    :cond_1
    iget-short v3, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-ne v1, v3, :cond_2

    return v2

    :cond_2
    iget-short v1, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    iget-short v1, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->subset2sets([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-short v1, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v1, v4, :cond_4

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object p1, p1, v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->elementInSet(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->elementInSet(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public performIntersectionWith(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;S)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;-><init>()V

    iput-short p2, v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->areSame(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-short p1, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iput-short p1, v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iput-object p1, v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto/16 :goto_5

    :cond_1
    iget-short p2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v2, 0x1

    if-eq p2, v2, :cond_c

    iget-short v3, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v3, v2, :cond_2

    goto/16 :goto_3

    :cond_2
    const/4 v2, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne p2, v2, :cond_3

    if-eq v3, v4, :cond_4

    :cond_3
    iget-short p2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne p2, v4, :cond_8

    iget-short p2, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne p2, v2, :cond_8

    :cond_4
    iget-short p2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne p2, v2, :cond_5

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    move-object v3, p2

    move-object p2, p1

    goto :goto_0

    :cond_5
    iget-object p2, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    move-object v3, p2

    move-object p2, p1

    :goto_0
    array-length v6, p2

    new-array v7, v6, [Ljava/lang/String;

    move p1, v5

    move v0, p1

    :goto_1
    if-lt p1, v6, :cond_6

    iput-short v4, v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    new-array p1, v0, [Ljava/lang/String;

    iput-object p1, v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object p1, v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    invoke-static {v7, v5, p1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_5

    :cond_6
    aget-object v2, p2, p1

    aget-object v8, v3, v5

    if-eq v2, v8, :cond_7

    aget-object v2, p2, p1

    sget-object v8, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    if-eq v2, v8, :cond_7

    add-int/lit8 v2, v0, 0x1

    aget-object v8, p2, p1

    aput-object v8, v7, v0

    move v0, v2

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_8
    iget-short p2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne p2, v4, :cond_9

    iget-short p2, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne p2, v4, :cond_9

    iput-short v4, v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->intersect2sets([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto :goto_5

    :cond_9
    iget-short p2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne p2, v2, :cond_e

    iget-short p2, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne p2, v2, :cond_e

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object p2, p2, v5

    sget-object v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    if-eq p2, v2, :cond_a

    iget-object p2, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object p2, p2, v5

    if-eq p2, v2, :cond_a

    return-object v0

    :cond_a
    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object p2, p2, v5

    sget-object v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    if-ne p2, v0, :cond_b

    goto :goto_2

    :cond_b
    move-object p1, p0

    :goto_2
    iget-short p2, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iput-short p2, v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iput-object p1, v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto :goto_5

    :cond_c
    :goto_3
    iget-short p2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne p2, v2, :cond_d

    goto :goto_4

    :cond_d
    move-object p1, p0

    :goto_4
    iget-short p2, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iput-short p2, v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iput-object p1, v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    :cond_e
    :goto_5
    return-object v1
.end method

.method public performUnionWith(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;S)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;-><init>()V

    iput-short p2, v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->areSame(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-short p1, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iput-short p1, v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iput-object p1, v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto/16 :goto_2

    :cond_1
    iget-short p2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v2, 0x1

    if-eq p2, v2, :cond_d

    iget-short v3, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v3, v2, :cond_2

    goto/16 :goto_1

    :cond_2
    const/4 v4, 0x3

    if-ne p2, v4, :cond_3

    if-ne v3, v4, :cond_3

    iput-short v4, v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->union2sets([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto/16 :goto_2

    :cond_3
    iget-short p2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v3, 0x0

    const/4 v5, 0x2

    if-ne p2, v5, :cond_4

    iget-short p2, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne p2, v5, :cond_4

    iput-short v5, v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    new-array p1, v5, [Ljava/lang/String;

    iput-object p1, v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object p1, v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    sget-object p2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    aput-object p2, p1, v3

    aput-object p2, p1, v2

    goto :goto_2

    :cond_4
    iget-short p2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne p2, v5, :cond_5

    iget-short p2, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-eq p2, v4, :cond_6

    :cond_5
    iget-short p2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne p2, v4, :cond_e

    iget-short p2, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne p2, v5, :cond_e

    :cond_6
    iget-short p2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne p2, v5, :cond_7

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto :goto_0

    :cond_7
    iget-object p2, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    :goto_0
    sget-object v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    invoke-virtual {p0, v4, p1}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->elementInSet(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    aget-object v6, p2, v3

    sget-object v7, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    if-eq v6, v7, :cond_b

    aget-object v6, p2, v3

    invoke-virtual {p0, v6, p1}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->elementInSet(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz v4, :cond_8

    iput-short v2, v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    goto :goto_2

    :cond_8
    if-eqz p1, :cond_9

    if-nez v4, :cond_9

    iput-short v5, v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    new-array p1, v5, [Ljava/lang/String;

    iput-object p1, v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object p1, v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    sget-object p2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    aput-object p2, p1, v3

    aput-object p2, p1, v2

    goto :goto_2

    :cond_9
    if-nez p1, :cond_a

    if-eqz v4, :cond_a

    return-object v0

    :cond_a
    iput-short v5, v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iput-object p2, v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto :goto_2

    :cond_b
    if-eqz v4, :cond_c

    iput-short v2, v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    goto :goto_2

    :cond_c
    iput-short v5, v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iput-object p2, v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto :goto_2

    :cond_d
    :goto_1
    iput-short v2, v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    :cond_e
    :goto_2
    return-object v1
.end method

.method subset2sets([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->elementInSet(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fDescription:Ljava/lang/String;

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "WC["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v3, v1, v2

    if-eqz v3, :cond_1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, ",\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v3, v2, v1

    if-eqz v3, :cond_3

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_1
    const-string v1, "##other"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v3, v1, v2

    if-eqz v3, :cond_4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_2
    const-string v1, "##any"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fDescription:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fDescription:Ljava/lang/String;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method union2sets([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    array-length v4, p1

    if-lt v2, v4, :cond_0

    array-length p1, p2

    add-int/2addr p1, v3

    new-array p1, p1, [Ljava/lang/String;

    invoke-static {v0, v1, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p2

    invoke-static {p2, v1, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_0
    aget-object v4, p1, v2

    invoke-virtual {p0, v4, p2}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->elementInSet(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    aget-object v5, p1, v2

    aput-object v5, v0, v3

    move v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public weakerProcessContents(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z
    .locals 3

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-short v0, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    if-eq v0, v1, :cond_1

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-short p1, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
