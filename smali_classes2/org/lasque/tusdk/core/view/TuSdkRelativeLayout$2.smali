.class Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;->postRequestLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout$2;->a:Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout$2;->a:Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;->requestLayout()V

    return-void
.end method
