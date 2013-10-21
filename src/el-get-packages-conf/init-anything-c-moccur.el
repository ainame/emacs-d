;; カスタマイズ可能変数の設定(M-x customize-group anything-c-moccur でも設定可能)
(setq ;;anything-c-moccur-anything-idle-delay 0. ;`anything-idle-delay'
      anything-c-moccur-higligt-info-line-flag t ; `anything-c-moccur-dmoccur'などのコマンドでバッファの情報をハイライトする
      anything-c-moccur-enable-auto-look-flag t ; 現在選択中の候補の位置を他のwindowに表示する
      anything-c-moccur-enable-initial-pattern t) ; `anything-c-moccur-occur-by-moccur'の起動時にポイントの位置の単語を初期パターンにする

;; 複数の検索語や、特定のフェイスのみマッチ等の機能を有効にする
;; 詳細は http://www.bookshelf.jp/soft/meadow_50.html#SEC751
(setq moccur-split-word t)

(define-key isearch-mode-map (kbd "C-o") 'anything-c-moccur-occur-by-moccur) ;バッファ内検索
(define-key isearch-mode-map (kbd "C-M-o") 'anything-c-moccur-dmoccur) ;ディレクトリ
(add-hook 'dired-mode-hook ;dired
	  '(lambda ()
	     (local-set-key (kbd "O") 'anything-c-moccur-dired-do-moccur-by-moccur)))
