.class public Lmf/org/apache/xerces/util/XMLAttributesImpl;
.super Ljava/lang/Object;
.source "XMLAttributesImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/XMLAttributes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    }
.end annotation


# static fields
.field protected static final SIZE_LIMIT:I = 0x14

.field protected static final TABLE_SIZE:I = 0x65


# instance fields
.field protected fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

.field protected fAttributeTableViewChainState:[I

.field protected fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

.field protected fIsTableViewConsistent:Z

.field protected fLargeCount:I

.field protected fLength:I

.field protected fNamespaces:Z

.field protected fTableViewBuckets:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fNamespaces:Z

    iput v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    const/4 v0, 0x4

    new-array v0, v0, [Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iput p1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    invoke-direct {v1}, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private getReportableType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    const-string p1, "NMTOKEN"

    return-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    const/4 v1, -0x1

    const/16 v2, 0x14

    const/4 v3, 0x0

    if-ge v0, v2, :cond_2

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndexFast(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndexFast(Ljava/lang/String;)I

    move-result v0

    :goto_0
    if-ne v0, v1, :cond_d

    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v2, v1

    if-ne v0, v2, :cond_d

    array-length v2, v1

    add-int/lit8 v2, v2, 0x4

    new-array v2, v2, [Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v4, v1

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v1, v1

    :goto_1
    array-length v4, v2

    if-lt v1, v4, :cond_1

    iput-object v2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    goto/16 :goto_8

    :cond_1
    new-instance v4, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    invoke-direct {v4}, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndexFast(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_d

    :cond_3
    iget-boolean v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fIsTableViewConsistent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-ne v0, v2, :cond_5

    :cond_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->prepareAndPopulateTableView()V

    iput-boolean v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fIsTableViewConsistent:Z

    :cond_5
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getTableViewBucket(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    aget v2, v2, v0

    iget v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    if-eq v2, v4, :cond_8

    iget v2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v5, v4

    if-ne v2, v5, :cond_7

    array-length v5, v4

    shl-int/lit8 v1, v5, 0x1

    new-array v1, v1, [Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v5, v4

    invoke-static {v4, v3, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v4, v4

    :goto_2
    array-length v5, v1

    if-lt v4, v5, :cond_6

    iput-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    goto :goto_3

    :cond_6
    new-instance v5, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    invoke-direct {v5}, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    iget v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    aput v4, v1, v0

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v4, v1, v2

    const/4 v5, 0x0

    iput-object v5, v4, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v2

    aput-object v1, v4, v0

    move v0, v2

    goto :goto_8

    :cond_8
    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v2, v2, v0

    :goto_4
    if-nez v2, :cond_9

    goto :goto_5

    :cond_9
    iget-object v4, v2, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v5, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v4, v5, :cond_e

    :goto_5
    if-nez v2, :cond_c

    iget v2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v5, v4

    if-ne v2, v5, :cond_b

    array-length v5, v4

    shl-int/lit8 v1, v5, 0x1

    new-array v1, v1, [Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v5, v4

    invoke-static {v4, v3, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v4, v4

    :goto_6
    array-length v5, v1

    if-lt v4, v5, :cond_a

    iput-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    goto :goto_7

    :cond_a
    new-instance v5, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    invoke-direct {v5}, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_b
    :goto_7
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v4, v1, v2

    iget-object v5, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v6, v5, v0

    iput-object v6, v4, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v2

    aput-object v1, v5, v0

    move v0, v2

    goto :goto_8

    :cond_c
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndexFast(Ljava/lang/String;)I

    move-result v0

    :cond_d
    :goto_8
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    iget-object v2, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    iput-object p2, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    iput-object p3, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    iput-object p3, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    iput-boolean v3, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->specified:Z

    iget-object p1, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/Augmentations;->removeAllItems()V

    return v0

    :cond_e
    iget-object v2, v2, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    goto :goto_4
.end method

.method public addAttributeNS(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v2, v1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    iget v2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    const/16 v4, 0x14

    if-ge v2, v4, :cond_0

    array-length v1, v1

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    goto :goto_0

    :cond_0
    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v4, v2

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v2, v2

    :goto_1
    array-length v4, v1

    if-lt v2, v4, :cond_1

    iput-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    goto :goto_2

    :cond_1
    new-instance v4, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    invoke-direct {v4}, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v1, v0

    iget-object v1, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    iput-object p2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    iput-object p3, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    iput-object p3, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    iput-boolean v3, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->specified:Z

    iget-object p1, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/Augmentations;->removeAllItems()V

    return-void
.end method

.method public checkDuplicatesNS()Lmf/org/apache/xerces/xni/QName;
    .locals 7

    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x14

    if-gt v0, v3, :cond_3

    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v0, v0, -0x1

    if-lt v2, v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, v2

    add-int/lit8 v3, v2, 0x1

    move v2, v3

    :goto_1
    iget v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v2, v4, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v4, v4, v2

    iget-object v5, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v6, v4, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-ne v5, v6, :cond_2

    iget-object v5, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v6, v4, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v5, v6, :cond_2

    iget-object v0, v4, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    return-object v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iput-boolean v2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fIsTableViewConsistent:Z

    invoke-virtual {p0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->prepareTableView()V

    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-gez v0, :cond_4

    :goto_3
    return-object v1

    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v2, v2, v0

    iget-object v3, v2, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v4, v2, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getTableViewBucket(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    aget v5, v4, v3

    iget v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    if-eq v5, v6, :cond_5

    aput v6, v4, v3

    iput-object v1, v2, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aput-object v2, v4, v3

    goto :goto_5

    :cond_5
    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v4, v4, v3

    :goto_4
    if-nez v4, :cond_6

    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v5, v4, v3

    iput-object v5, v2, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aput-object v2, v4, v3

    :goto_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    iget-object v5, v4, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v6, v2, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-ne v5, v6, :cond_7

    iget-object v5, v4, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v6, v2, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v5, v6, :cond_7

    iget-object v0, v2, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    return-object v0

    :cond_7
    iget-object v4, v4, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    goto :goto_4
.end method

.method protected cleanTableView()V
    .locals 4

    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    if-gez v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    if-eqz v0, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    sub-int/2addr v0, v1

    :goto_0
    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    iput v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    :cond_2
    return-void
.end method

.method public getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object p1, v0, p1

    iget-object p1, p1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lmf/org/apache/xerces/xni/Augmentations;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAugmentations(Ljava/lang/String;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object p1, v0, p1

    iget-object p1, p1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lmf/org/apache/xerces/xni/Augmentations;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getAugmentations(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-object p2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object p1, p2, p1

    iget-object p1, p1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lmf/org/apache/xerces/xni/Augmentations;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    iget-object v2, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v1, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    iget-object v2, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eq p1, v2, :cond_1

    if-eqz p1, :cond_2

    iget-object v2, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v1, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIndexFast(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    iget-object v1, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIndexFast(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    iget-object v2, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-ne v2, p2, :cond_1

    iget-object v1, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    return v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fNamespaces:Z

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    if-ltz p1, :cond_2

    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object p1, v0, p1

    iget-object p1, p1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object p1, v0, p1

    iget-object p1, p1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getName(ILmf/org/apache/xerces/xni/QName;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object p1, v0, p1

    iget-object p1, p1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    return-void
.end method

.method public getNonNormalizedValue(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object p1, v0, p1

    iget-object p1, p1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    return-object p1
.end method

.method public getPrefix(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_2

    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object p1, v0, p1

    iget-object p1, p1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    return-object p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_2

    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object p1, v0, p1

    iget-object p1, p1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    return-object p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getTableViewBucket(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    rem-int/2addr p1, v0

    return p1
.end method

.method protected getTableViewBucket(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const v0, 0x7fffffff

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    and-int/2addr p1, v0

    iget p2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    rem-int/2addr p1, p2

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    add-int/2addr p1, p2

    and-int/2addr p1, v0

    iget p2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    rem-int/2addr p1, p2

    return p1
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object p1, v0, p1

    iget-object p1, p1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getReportableType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object p1, v0, p1

    iget-object p1, p1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getReportableType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fNamespaces:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    iget-object p2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object p1, p2, p1

    iget-object p1, p1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getReportableType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object p1, v0, p1

    iget-object p1, p1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object p1, v0, p1

    iget-object p1, p1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object p1, v0, p1

    iget-object p1, p1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getValue(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public isSpecified(I)Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object p1, v0, p1

    iget-boolean p1, p1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->specified:Z

    return p1
.end method

.method protected prepareAndPopulateTableView()V
    .locals 6

    invoke-virtual {p0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->prepareTableView()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    iget-object v2, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getTableViewBucket(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    aget v4, v3, v2

    iget v5, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    if-eq v4, v5, :cond_1

    aput v5, v3, v2

    const/4 v3, 0x0

    iput-object v3, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aput-object v1, v3, v2

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v4, v3, v2

    iput-object v4, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aput-object v1, v3, v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected prepareTableView()V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    if-nez v0, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    new-array v1, v0, [Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iput-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->cleanTableView()V

    :goto_0
    return-void
.end method

.method public removeAllAttributes()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    return-void
.end method

.method public removeAttributeAt(I)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fIsTableViewConsistent:Z

    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v1, v0, -0x1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v2, v1, p1

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v3, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v0, v0, -0x1

    aput-object v2, p1, v0

    :cond_0
    iget p1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    return-void
.end method

.method public setAugmentations(ILmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object p1, v0, p1

    iput-object p2, p1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lmf/org/apache/xerces/xni/Augmentations;

    return-void
.end method

.method public setName(ILmf/org/apache/xerces/xni/QName;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object p1, v0, p1

    iget-object p1, p1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    return-void
.end method

.method public setNamespaces(Z)V
    .locals 0

    iput-boolean p1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fNamespaces:Z

    return-void
.end method

.method public setNonNormalizedValue(ILjava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    iget-object p2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object p2, p2, p1

    iget-object p2, p2, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object p1, v0, p1

    iput-object p2, p1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    return-void
.end method

.method public setSpecified(IZ)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object p1, v0, p1

    iput-boolean p2, p1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->specified:Z

    return-void
.end method

.method public setType(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object p1, v0, p1

    iput-object p2, p1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    return-void
.end method

.method public setURI(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object p1, v0, p1

    iget-object p1, p1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iput-object p2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    return-void
.end method

.method public setValue(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object p1, v0, p1

    iput-object p2, p1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    iput-object p2, p1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    return-void
.end method
