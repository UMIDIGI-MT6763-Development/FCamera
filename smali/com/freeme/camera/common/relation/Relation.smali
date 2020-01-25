.class public Lcom/freeme/camera/common/relation/Relation;
.super Ljava/lang/Object;
.source "Relation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/relation/Relation$Body;,
        Lcom/freeme/camera/common/relation/Relation$Header;,
        Lcom/freeme/camera/common/relation/Relation$Builder;
    }
.end annotation


# static fields
.field public static final BODY_SPLITTER:Ljava/lang/String; = ","

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private final mBodyList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/freeme/camera/common/relation/Relation$Body;",
            ">;"
        }
    .end annotation
.end field

.field private mHeader:Lcom/freeme/camera/common/relation/Relation$Header;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/common/relation/Relation;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/relation/Relation;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/relation/Relation;->mBodyList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/common/relation/Relation$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/common/relation/Relation;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/freeme/camera/common/relation/Relation;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/common/relation/Relation;->createHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addBody(Lcom/freeme/camera/common/relation/Relation$Body;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/relation/Relation;->mBodyList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/freeme/camera/common/relation/Relation$Header;

    invoke-direct {v0, p0, p1, p2}, Lcom/freeme/camera/common/relation/Relation$Header;-><init>(Lcom/freeme/camera/common/relation/Relation;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/freeme/camera/common/relation/Relation;->mHeader:Lcom/freeme/camera/common/relation/Relation$Header;

    return-void
.end method

.method private findBody(Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Body;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/common/relation/Relation;->mBodyList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/common/relation/Relation;->mBodyList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/relation/Relation$Body;

    iget-object v2, v1, Lcom/freeme/camera/common/relation/Relation$Body;->key:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private setHeader(Lcom/freeme/camera/common/relation/Relation$Header;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/relation/Relation;->mHeader:Lcom/freeme/camera/common/relation/Relation$Header;

    return-void
.end method


# virtual methods
.method public addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/relation/Relation;->findBody(Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Body;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object p2, v0, Lcom/freeme/camera/common/relation/Relation$Body;->value:Ljava/lang/String;

    iput-object p3, v0, Lcom/freeme/camera/common/relation/Relation$Body;->entryValues:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/relation/Relation;->mBodyList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/freeme/camera/common/relation/Relation$Body;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/freeme/camera/common/relation/Relation$Body;-><init>(Lcom/freeme/camera/common/relation/Relation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public copy()Lcom/freeme/camera/common/relation/Relation;
    .locals 3

    new-instance v0, Lcom/freeme/camera/common/relation/Relation;

    invoke-direct {v0}, Lcom/freeme/camera/common/relation/Relation;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/common/relation/Relation;->mHeader:Lcom/freeme/camera/common/relation/Relation$Header;

    invoke-virtual {v1}, Lcom/freeme/camera/common/relation/Relation$Header;->copy()Lcom/freeme/camera/common/relation/Relation$Header;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/relation/Relation;->setHeader(Lcom/freeme/camera/common/relation/Relation$Header;)V

    iget-object v1, p0, Lcom/freeme/camera/common/relation/Relation;->mBodyList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/common/relation/Relation$Body;

    invoke-virtual {v2}, Lcom/freeme/camera/common/relation/Relation$Body;->copy()Lcom/freeme/camera/common/relation/Relation$Body;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/freeme/camera/common/relation/Relation;->addBody(Lcom/freeme/camera/common/relation/Relation$Body;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getBodyEntryValues(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/relation/Relation;->findBody(Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Body;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/freeme/camera/common/relation/Relation$Body;->entryValues:Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBodyKeys()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/common/relation/Relation;->mBodyList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/common/relation/Relation$Body;

    iget-object v2, v2, Lcom/freeme/camera/common/relation/Relation$Body;->key:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getBodyValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/relation/Relation;->findBody(Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Body;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/freeme/camera/common/relation/Relation$Body;->value:Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getHeaderKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/relation/Relation;->mHeader:Lcom/freeme/camera/common/relation/Relation$Header;

    iget-object v0, v0, Lcom/freeme/camera/common/relation/Relation$Header;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/relation/Relation;->mHeader:Lcom/freeme/camera/common/relation/Relation$Header;

    iget-object v0, v0, Lcom/freeme/camera/common/relation/Relation$Header;->value:Ljava/lang/String;

    return-object v0
.end method

.method public printBody()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/freeme/camera/common/relation/Relation;->mBodyList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/freeme/camera/common/relation/Relation;->mBodyList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/common/relation/Relation$Body;

    const-string v3, "Body: key="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/freeme/camera/common/relation/Relation$Body;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/freeme/camera/common/relation/Relation$Body;->value:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", entryValues="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/freeme/camera/common/relation/Relation$Body;->entryValues:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printHeader()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Header:key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/common/relation/Relation;->mHeader:Lcom/freeme/camera/common/relation/Relation$Header;

    iget-object v1, v1, Lcom/freeme/camera/common/relation/Relation$Header;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/common/relation/Relation;->mHeader:Lcom/freeme/camera/common/relation/Relation$Header;

    iget-object v1, v1, Lcom/freeme/camera/common/relation/Relation$Header;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeBody(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/relation/Relation;->findBody(Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Body;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/relation/Relation;->mBodyList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
