.class public Lcom/freeme/camera/feature/mode/iko/IKOBean;
.super Ljava/lang/Object;
.source "IKOBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean;
    }
.end annotation


# instance fields
.field private log_id:J

.field private result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean;",
            ">;"
        }
    .end annotation
.end field

.field private result_num:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLog_id()J
    .locals 2

    iget-wide v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOBean;->log_id:J

    return-wide v0
.end method

.method public getResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOBean;->result:Ljava/util/List;

    return-object v0
.end method

.method public getResult_num()I
    .locals 1

    iget v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOBean;->result_num:I

    return v0
.end method

.method public setLog_id(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOBean;->log_id:J

    return-void
.end method

.method public setResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOBean;->result:Ljava/util/List;

    return-void
.end method

.method public setResult_num(I)V
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOBean;->result_num:I

    return-void
.end method
