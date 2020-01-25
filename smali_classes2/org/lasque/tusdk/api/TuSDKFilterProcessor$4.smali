.class Lorg/lasque/tusdk/api/TuSDKFilterProcessor$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->onFilterWrapChanged(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/api/TuSDKFilterProcessor;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/api/TuSDKFilterProcessor;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor$4;->a:Lorg/lasque/tusdk/api/TuSDKFilterProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor$4;->a:Lorg/lasque/tusdk/api/TuSDKFilterProcessor;

    invoke-static {v0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->e(Lorg/lasque/tusdk/api/TuSDKFilterProcessor;)V

    return-void
.end method
