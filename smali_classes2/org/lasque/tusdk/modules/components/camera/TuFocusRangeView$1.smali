.class Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView$1;->a:Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView$1;->a:Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->showViewIn(Z)V

    return-void
.end method
