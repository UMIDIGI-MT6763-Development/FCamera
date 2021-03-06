.class public Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;
.super Ljava/util/AbstractList;
.source "XSObjectListImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSObjectList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl$XSObjectListIterator;
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x4

.field private static final EMPTY_ITERATOR:Ljava/util/ListIterator;

.field public static final EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;


# instance fields
.field private fArray:[Lmf/org/apache/xerces/xs/XSObject;

.field private fLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    const/4 v1, 0x0

    new-array v2, v1, [Lmf/org/apache/xerces/xs/XSObject;

    invoke-direct {v0, v2, v1}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl$1;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl$1;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_ITERATOR:Ljava/util/ListIterator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    const/4 v1, 0x4

    new-array v1, v1, [Lmf/org/apache/xerces/xs/XSObject;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    return-void
.end method

.method public constructor <init>([Lmf/org/apache/xerces/xs/XSObject;I)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    iput p2, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;)I
    .locals 0

    iget p0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    return p0
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;)[Lmf/org/apache/xerces/xs/XSObject;
    .locals 0

    iget-object p0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    return-object p0
.end method

.method private containsNull()Z
    .locals 3

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-gez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private containsObject(Ljava/lang/Object;)Z
    .locals 3

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private listIterator0(I)Ljava/util/ListIterator;
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    if-nez v0, :cond_0

    sget-object p1, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_ITERATOR:Ljava/util/ListIterator;

    goto :goto_0

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl$XSObjectListIterator;

    invoke-direct {v0, p0, p1}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl$XSObjectListIterator;-><init>(Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;I)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private toArray0([Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addXSObject(ILmf/org/apache/xerces/xs/XSObject;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    aput-object p2, v0, p1

    return-void
.end method

.method public addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V
    .locals 4

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x4

    new-array v2, v2, [Lmf/org/apache/xerces/xs/XSObject;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    aput-object p1, v0, v1

    return-void
.end method

.method public clearXSObjectList()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    return-void

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->containsNull()Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->containsObject(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    return v0
.end method

.method public item(I)Lmf/org/apache/xerces/xs/XSObject;
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->listIterator0(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->listIterator0(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    if-ge p1, v0, :cond_0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->listIterator0(I)Ljava/util/ListIterator;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->getLength()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->toArray0([Ljava/lang/Object;)V

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    array-length v0, p1

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_0
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->toArray0([Ljava/lang/Object;)V

    array-length v0, p1

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->fLength:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    aput-object v0, p1, v1

    :cond_1
    return-object p1
.end method
