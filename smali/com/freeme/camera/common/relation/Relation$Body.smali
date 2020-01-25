.class Lcom/freeme/camera/common/relation/Relation$Body;
.super Ljava/lang/Object;
.source "Relation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/relation/Relation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Body"
.end annotation


# instance fields
.field public entryValues:Ljava/lang/String;

.field public final key:Ljava/lang/String;

.field final synthetic this$0:Lcom/freeme/camera/common/relation/Relation;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/common/relation/Relation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/relation/Relation$Body;->this$0:Lcom/freeme/camera/common/relation/Relation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/common/relation/Relation$Body;->key:Ljava/lang/String;

    iput-object p3, p0, Lcom/freeme/camera/common/relation/Relation$Body;->value:Ljava/lang/String;

    iput-object p4, p0, Lcom/freeme/camera/common/relation/Relation$Body;->entryValues:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public copy()Lcom/freeme/camera/common/relation/Relation$Body;
    .locals 5

    new-instance v0, Lcom/freeme/camera/common/relation/Relation$Body;

    iget-object v1, p0, Lcom/freeme/camera/common/relation/Relation$Body;->this$0:Lcom/freeme/camera/common/relation/Relation;

    iget-object v2, p0, Lcom/freeme/camera/common/relation/Relation$Body;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/freeme/camera/common/relation/Relation$Body;->value:Ljava/lang/String;

    iget-object v4, p0, Lcom/freeme/camera/common/relation/Relation$Body;->entryValues:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Body;-><init>(Lcom/freeme/camera/common/relation/Relation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
