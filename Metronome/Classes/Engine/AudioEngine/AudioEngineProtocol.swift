import CoreAudio
import AudioToolbox

protocol AudioEngineProtocol {
	func playMusicSequence(_ musicSequence: MusicSequence) throws
	func stopMusicSequence()
	
	var playbackRate: Double { get set }
    var isPlaying: Bool { get }
}
