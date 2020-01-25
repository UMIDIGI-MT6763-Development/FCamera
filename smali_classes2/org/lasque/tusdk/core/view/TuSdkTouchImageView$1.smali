.class Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$1;->a:Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMove()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$1;->a:Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->invalidateTargetView()V

    return-void
.end method
