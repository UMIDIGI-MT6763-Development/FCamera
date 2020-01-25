.class public final Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;
.super Ljava/lang/Object;
.source "DTDGrammar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/dtd/DTDGrammar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "QNameHashtable"
.end annotation


# static fields
.field private static final HASHTABLE_SIZE:I = 0x65

.field private static final INITIAL_BUCKET_SIZE:I = 0x4


# instance fields
.field private fHashTable:[[Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x65

    new-array v0, v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->fHashTable:[[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)I
    .locals 8

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x65

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->fHashTable:[[Ljava/lang/Object;

    aget-object v0, v1, v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    aget-object v3, v0, v2

    check-cast v3, [I

    aget v3, v3, v2

    const/4 v4, 0x1

    move v5, v2

    move v6, v4

    :goto_0
    if-lt v5, v3, :cond_1

    return v1

    :cond_1
    aget-object v7, v0, v6

    check-cast v7, Ljava/lang/String;

    if-ne v7, p1, :cond_2

    add-int/2addr v6, v4

    aget-object p1, v0, v6

    check-cast p1, [I

    aget p1, p1, v2

    return p1

    :cond_2
    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public put(Ljava/lang/String;I)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x65

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->fHashTable:[[Ljava/lang/Object;

    aget-object v2, v1, v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_0

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    new-array v6, v4, [I

    aput v4, v6, v5

    aput-object v6, v2, v5

    aput-object p1, v2, v4

    new-array p1, v4, [I

    aput p2, p1, v5

    aput-object p1, v2, v3

    aput-object v2, v1, v0

    goto :goto_2

    :cond_0
    aget-object v1, v2, v5

    check-cast v1, [I

    aget v1, v1, v5

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v6, v4

    array-length v7, v2

    if-ne v6, v7, :cond_1

    add-int/lit8 v7, v1, 0x4

    mul-int/2addr v7, v3

    add-int/2addr v7, v4

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2, v5, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->fHashTable:[[Ljava/lang/Object;

    aput-object v3, v2, v0

    move-object v2, v3

    :cond_1
    move v3, v4

    move v0, v5

    :goto_0
    if-lt v0, v1, :cond_2

    move v0, v5

    goto :goto_1

    :cond_2
    aget-object v7, v2, v3

    check-cast v7, Ljava/lang/String;

    if-ne v7, p1, :cond_4

    add-int/2addr v3, v4

    aget-object v0, v2, v3

    check-cast v0, [I

    aput p2, v0, v5

    move v0, v4

    :goto_1
    if-nez v0, :cond_3

    add-int/lit8 v0, v6, 0x1

    aput-object p1, v2, v6

    new-array p1, v4, [I

    aput p2, p1, v5

    aput-object p1, v2, v0

    aget-object p1, v2, v5

    check-cast p1, [I

    add-int/2addr v1, v4

    aput v1, p1, v5

    :cond_3
    :goto_2
    return-void

    :cond_4
    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
