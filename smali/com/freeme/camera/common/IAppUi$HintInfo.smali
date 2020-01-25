.class public Lcom/freeme/camera/common/IAppUi$HintInfo;
.super Ljava/lang/Object;
.source "IAppUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/IAppUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HintInfo"
.end annotation


# instance fields
.field public mBackground:Landroid/graphics/drawable/Drawable;

.field public mDelayTime:I

.field public mHintText:Ljava/lang/String;

.field public mType:Lcom/freeme/camera/common/IAppUi$HintType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
