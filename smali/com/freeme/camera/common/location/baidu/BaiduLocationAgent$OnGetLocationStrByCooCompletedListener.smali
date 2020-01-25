.class public abstract Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$OnGetLocationStrByCooCompletedListener;
.super Ljava/lang/Object;
.source "BaiduLocationAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnGetLocationStrByCooCompletedListener"
.end annotation


# instance fields
.field mCurrentThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$OnGetLocationStrByCooCompletedListener;->mCurrentThread:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public abstract OnGetLocationStrByCooCompleted(Ljava/lang/String;)V
.end method
