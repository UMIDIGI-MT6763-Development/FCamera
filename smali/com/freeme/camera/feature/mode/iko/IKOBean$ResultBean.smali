.class public Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean;
.super Ljava/lang/Object;
.source "IKOBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/iko/IKOBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean$BaikeInfoBean;
    }
.end annotation


# instance fields
.field private baike_info:Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean$BaikeInfoBean;

.field private keyword:Ljava/lang/String;

.field private root:Ljava/lang/String;

.field private score:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaike_info()Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean$BaikeInfoBean;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean;->baike_info:Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean$BaikeInfoBean;

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getRoot()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean;->root:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()D
    .locals 2

    iget-wide v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean;->score:D

    return-wide v0
.end method

.method public setBaike_info(Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean$BaikeInfoBean;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean;->baike_info:Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean$BaikeInfoBean;

    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean;->keyword:Ljava/lang/String;

    return-void
.end method

.method public setRoot(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean;->root:Ljava/lang/String;

    return-void
.end method

.method public setScore(D)V
    .locals 0

    iput-wide p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean;->score:D

    return-void
.end method
