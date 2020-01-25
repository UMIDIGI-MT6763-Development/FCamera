.class public Lcom/freeme/camera/common/relation/Relation$Builder;
.super Ljava/lang/Object;
.source "Relation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/relation/Relation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mRelation:Lcom/freeme/camera/common/relation/Relation;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/freeme/camera/common/relation/Relation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/relation/Relation;-><init>(Lcom/freeme/camera/common/relation/Relation$1;)V

    iput-object v0, p0, Lcom/freeme/camera/common/relation/Relation$Builder;->mRelation:Lcom/freeme/camera/common/relation/Relation;

    iget-object v0, p0, Lcom/freeme/camera/common/relation/Relation$Builder;->mRelation:Lcom/freeme/camera/common/relation/Relation;

    invoke-static {v0, p1, p2}, Lcom/freeme/camera/common/relation/Relation;->access$100(Lcom/freeme/camera/common/relation/Relation;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/relation/Relation$Builder;->mRelation:Lcom/freeme/camera/common/relation/Relation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/freeme/camera/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public build()Lcom/freeme/camera/common/relation/Relation;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/relation/Relation$Builder;->mRelation:Lcom/freeme/camera/common/relation/Relation;

    invoke-virtual {v0}, Lcom/freeme/camera/common/relation/Relation;->copy()Lcom/freeme/camera/common/relation/Relation;

    move-result-object v0

    return-object v0
.end method
