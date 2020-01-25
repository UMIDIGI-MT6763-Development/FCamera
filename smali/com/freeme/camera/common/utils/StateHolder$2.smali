.class Lcom/freeme/camera/common/utils/StateHolder$2;
.super Ljava/lang/Object;
.source "StateHolder.java"

# interfaces
.implements Lcom/freeme/camera/common/utils/StateHolder$ConditionChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/common/utils/StateHolder;->waitToAvoidStates(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/utils/StateHolder;

.field final synthetic val$states:I


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/utils/StateHolder;I)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/utils/StateHolder$2;->this$0:Lcom/freeme/camera/common/utils/StateHolder;

    iput p2, p0, Lcom/freeme/camera/common/utils/StateHolder$2;->val$states:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success()Z
    .locals 2

    iget v0, p0, Lcom/freeme/camera/common/utils/StateHolder$2;->val$states:I

    iget-object v1, p0, Lcom/freeme/camera/common/utils/StateHolder$2;->this$0:Lcom/freeme/camera/common/utils/StateHolder;

    invoke-virtual {v1}, Lcom/freeme/camera/common/utils/StateHolder;->getState()I

    move-result v1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
