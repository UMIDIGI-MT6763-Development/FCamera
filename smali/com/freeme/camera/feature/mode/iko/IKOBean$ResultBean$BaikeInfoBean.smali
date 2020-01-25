.class public Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean$BaikeInfoBean;
.super Ljava/lang/Object;
.source "IKOBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaikeInfoBean"
.end annotation


# instance fields
.field private baike_url:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private image_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaike_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean$BaikeInfoBean;->baike_url:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean$BaikeInfoBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImage_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean$BaikeInfoBean;->image_url:Ljava/lang/String;

    return-object v0
.end method

.method public setBaike_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean$BaikeInfoBean;->baike_url:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean$BaikeInfoBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setImage_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean$BaikeInfoBean;->image_url:Ljava/lang/String;

    return-void
.end method
