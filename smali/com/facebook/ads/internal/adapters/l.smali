.class public Lcom/facebook/ads/internal/adapters/l;
.super Lcom/facebook/ads/internal/adapters/a;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Lcom/facebook/ads/internal/view/d;

.field private d:Lcom/facebook/ads/internal/adapters/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/adapters/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/adapters/l;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/d;Lcom/facebook/ads/internal/adapters/b;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/facebook/ads/internal/adapters/a;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/b;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/l;->c:Lcom/facebook/ads/internal/view/d;

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/l;->d:Lcom/facebook/ads/internal/adapters/k;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/l;->d:Lcom/facebook/ads/internal/adapters/k;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/k;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/util/r;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/facebook/ads/internal/util/o;

    invoke-direct {v1, p1}, Lcom/facebook/ads/internal/util/o;-><init>(Ljava/util/Map;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/util/o;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/facebook/ads/internal/adapters/k;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/l;->d:Lcom/facebook/ads/internal/adapters/k;

    return-void
.end method

.method protected b()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/l;->d:Lcom/facebook/ads/internal/adapters/k;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/l;->c:Lcom/facebook/ads/internal/view/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/l;->d:Lcom/facebook/ads/internal/adapters/k;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/k;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/util/r;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/l;->c:Lcom/facebook/ads/internal/view/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/d;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/facebook/ads/internal/adapters/l;->b:Ljava/lang/String;

    const-string v1, "Webview already destroyed, cannot send impression"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    const-string v0, "evt"

    const-string v1, "native_imp"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/adapters/l;->a(Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/l;->c:Lcom/facebook/ads/internal/view/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/l;->d:Lcom/facebook/ads/internal/adapters/k;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/k;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/d;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public d()V
    .locals 2

    const-string v0, "evt"

    const-string v1, "interstitial_displayed"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/adapters/l;->a(Ljava/util/Map;)V

    return-void
.end method
