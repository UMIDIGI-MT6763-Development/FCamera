.class public Lcom/freeme/camera/common/relation/RelationGroup;
.super Ljava/lang/Object;
.source "RelationGroup.java"


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private final mBodyKeys:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderKey:Ljava/lang/String;

.field private final mRelationList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/freeme/camera/common/relation/Relation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/common/relation/RelationGroup;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/relation/RelationGroup;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/relation/RelationGroup;->mBodyKeys:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/relation/RelationGroup;->mRelationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private buildEmptyRelation(Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation;
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/relation/Relation$Builder;

    invoke-direct {v0, p1, p2}, Lcom/freeme/camera/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/common/relation/RelationGroup;->mBodyKeys:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, v1}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/freeme/camera/common/relation/Relation$Builder;->build()Lcom/freeme/camera/common/relation/Relation;

    move-result-object p1

    return-object p1
.end method

.method private buildNewRelation(Lcom/freeme/camera/common/relation/Relation;)Lcom/freeme/camera/common/relation/Relation;
    .locals 5

    new-instance v0, Lcom/freeme/camera/common/relation/Relation$Builder;

    invoke-virtual {p1}, Lcom/freeme/camera/common/relation/Relation;->getHeaderKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/freeme/camera/common/relation/Relation;->getHeaderValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/freeme/camera/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/common/relation/RelationGroup;->mBodyKeys:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/freeme/camera/common/relation/Relation;->getBodyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Lcom/freeme/camera/common/relation/Relation;->getBodyEntryValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/freeme/camera/common/relation/Relation$Builder;->build()Lcom/freeme/camera/common/relation/Relation;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addRelation(Lcom/freeme/camera/common/relation/Relation;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/relation/RelationGroup;->mRelationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/relation/RelationGroup;->mRelationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/relation/Relation;

    invoke-virtual {v1}, Lcom/freeme/camera/common/relation/Relation;->getHeaderValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->buildNewRelation(Lcom/freeme/camera/common/relation/Relation;)Lcom/freeme/camera/common/relation/Relation;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/freeme/camera/common/relation/RelationGroup;->mHeaderKey:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/freeme/camera/common/relation/RelationGroup;->buildEmptyRelation(Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public setBodyKeys(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/common/relation/RelationGroup;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[setBodyKeys] with Null bodyKeys!!!!!!"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, ","

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->trimResults()Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->omitEmptyStrings()Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/freeme/camera/common/relation/RelationGroup;->mBodyKeys:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setHeaderKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/relation/RelationGroup;->mHeaderKey:Ljava/lang/String;

    return-void
.end method
