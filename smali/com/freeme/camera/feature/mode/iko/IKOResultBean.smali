.class public Lcom/freeme/camera/feature/mode/iko/IKOResultBean;
.super Ljava/lang/Object;
.source "IKOResultBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mResultBean:Lcom/freeme/camera/feature/mode/iko/IKOBean;

.field private mResultByte:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResultBean()Lcom/freeme/camera/feature/mode/iko/IKOBean;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOResultBean;->mResultBean:Lcom/freeme/camera/feature/mode/iko/IKOBean;

    return-object v0
.end method

.method public getResultByte()[B
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOResultBean;->mResultByte:[B

    return-object v0
.end method

.method public setResultBean(Lcom/freeme/camera/feature/mode/iko/IKOBean;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOResultBean;->mResultBean:Lcom/freeme/camera/feature/mode/iko/IKOBean;

    return-void
.end method

.method public setResultByte([B)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOResultBean;->mResultByte:[B

    return-void
.end method
