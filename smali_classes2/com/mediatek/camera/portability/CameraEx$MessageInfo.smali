.class public Lcom/mediatek/camera/portability/CameraEx$MessageInfo;
.super Ljava/lang/Object;
.source "CameraEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/camera/portability/CameraEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageInfo"
.end annotation


# instance fields
.field public final mArg1:Ljava/lang/Object;

.field public final mArg2:Ljava/lang/Object;

.field final synthetic this$0:Lcom/mediatek/camera/portability/CameraEx;


# direct methods
.method constructor <init>(Lcom/mediatek/camera/portability/CameraEx;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/camera/portability/CameraEx$MessageInfo;->this$0:Lcom/mediatek/camera/portability/CameraEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/mediatek/camera/portability/CameraEx$MessageInfo;->mArg1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/mediatek/camera/portability/CameraEx$MessageInfo;->mArg2:Ljava/lang/Object;

    return-void
.end method
