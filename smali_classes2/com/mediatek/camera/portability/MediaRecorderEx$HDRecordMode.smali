.class public final Lcom/mediatek/camera/portability/MediaRecorderEx$HDRecordMode;
.super Ljava/lang/Object;
.source "MediaRecorderEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/camera/portability/MediaRecorderEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HDRecordMode"
.end annotation


# static fields
.field public static final INDOOR:I = 0x1

.field public static final NORMAL:I = 0x0

.field public static final OUTDOOR:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/mediatek/camera/portability/MediaRecorderEx;


# direct methods
.method private constructor <init>(Lcom/mediatek/camera/portability/MediaRecorderEx;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/camera/portability/MediaRecorderEx$HDRecordMode;->this$0:Lcom/mediatek/camera/portability/MediaRecorderEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
