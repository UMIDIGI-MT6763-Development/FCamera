.class public abstract Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/TuSdkViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnSafeClickListener"
.end annotation


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;->a:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;->a:J

    iput-wide p1, p0, Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;->a:J

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-wide v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;->a:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->isFastDoubleClick(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;->onSafeClick(Landroid/view/View;)V

    return-void
.end method

.method public abstract onSafeClick(Landroid/view/View;)V
.end method
