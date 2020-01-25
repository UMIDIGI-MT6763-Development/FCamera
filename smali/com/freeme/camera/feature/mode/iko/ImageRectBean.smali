.class public Lcom/freeme/camera/feature/mode/iko/ImageRectBean;
.super Ljava/lang/Object;
.source "ImageRectBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/iko/ImageRectBean$ResultBean;
    }
.end annotation


# instance fields
.field private log_id:J

.field private result:Lcom/freeme/camera/feature/mode/iko/ImageRectBean$ResultBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLog_id()J
    .locals 2

    iget-wide v0, p0, Lcom/freeme/camera/feature/mode/iko/ImageRectBean;->log_id:J

    return-wide v0
.end method

.method public getResult()Lcom/freeme/camera/feature/mode/iko/ImageRectBean$ResultBean;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/ImageRectBean;->result:Lcom/freeme/camera/feature/mode/iko/ImageRectBean$ResultBean;

    return-object v0
.end method

.method public setLog_id(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freeme/camera/feature/mode/iko/ImageRectBean;->log_id:J

    return-void
.end method

.method public setResult(Lcom/freeme/camera/feature/mode/iko/ImageRectBean$ResultBean;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/ImageRectBean;->result:Lcom/freeme/camera/feature/mode/iko/ImageRectBean$ResultBean;

    return-void
.end method
