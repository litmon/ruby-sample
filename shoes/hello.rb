Shoes.app(title: "Hello world!", width: 450, height: 150) do
  flow margin: 12 do
    banner "input Android SDK location", size: 10

    @edit_line = edit_line

    button("kill-server").click do
      android_sdk_root = @edit_line.text().gsub(/\/$/, "")
      adb = "#{android_sdk_root}/platform-tools/adb"
      alert(`#{adb} kill-server`)
    end

    button("start-server").click do
      android_sdk_root = @edit_line.text().gsub(/\/$/, "")
      adb = "#{android_sdk_root}/platform-tools/adb"
      alert(`#{adb} start-server`)
    end

  end
end
